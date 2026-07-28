import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../l10n/app_localizations.dart';
import '../../logic/providers/settings_provider.dart';

/// Shown on every app launch when app lock is enabled.
/// Calls [onUnlocked] once the correct PIN is entered.
class LockScreen extends StatefulWidget {
  final VoidCallback onUnlocked;
  const LockScreen({super.key, required this.onUnlocked});

  @override
  State<LockScreen> createState() => _LockScreenState();
}

class _LockScreenState extends State<LockScreen> {
  final _controller = TextEditingController();
  String? _error;

  void _submit() {
    final settings = context.read<SettingsProvider>();
    final l10n = AppLocalizations.of(context);
    if (settings.verifyPin(_controller.text)) {
      widget.onUnlocked();
    } else {
      setState(() => _error = l10n.wrongPin);
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.lock_outline, size: 56, color: scheme.primary),
                const SizedBox(height: 16),
                Text(l10n.enterPin, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 24),
                TextField(
                  controller: _controller,
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(4),
                  ],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 28, letterSpacing: 12),
                  decoration: InputDecoration(
                    counterText: '',
                    errorText: _error,
                    border: const OutlineInputBorder(),
                  ),
                  onSubmitted: (_) => _submit(),
                  onChanged: (val) {
                    if (_error != null) setState(() => _error = null);
                    if (val.length == 4) _submit();
                  },
                ),
                const SizedBox(height: 16),
                ElevatedButton(onPressed: _submit, child: Text(l10n.unlock)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
