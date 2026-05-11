# Security Summary

| Repository | Critical | High | Medium | Low | Null |
|------------|----------|------|--------|-----|------|
| 🟨 onecx-portal-ui-libs | 0 | 0 | 3 | 0 | 0 |
| 🟩 onecx-workspace | 0 | 0 | 0 | 0 | 0 |
| 🟩 onecx-notification-ui | 0 | 0 | 0 | 0 | 0 |
| 🟩 onecx-chat-ui | 0 | 0 | 0 | 0 | 0 |
| 🟩 onecx-ai-provider-ui | 0 | 0 | 0 | 0 | 0 |
| 🟩 bundle | 0 | 0 | 0 | 0 | 0 |
| 🟧 onecx-integration-tests | 0 | 1 | 0 | 0 | 0 |
| 🟩 onecx-local-env-cli | 0 | 0 | 0 | 0 | 0 |
| 🟩 onecx-infra-kc-operator | 0 | 0 | 0 | 0 | 0 |
# Security Details
| Repository | Rule ID | Severity | Alert URL | Message |
|------------|---------|----------|-----------|---------|
| onecx-portal-ui-libs | `js/prototype-polluting-assignment` | medium | [Link](https://github.com/onecx/onecx-portal-ui-libs/security/code-scanning/37) | This assignment may alter Object.prototype if a malicious '__proto__' string is injected from library input.\n |
| onecx-portal-ui-libs | `js/prototype-polluting-assignment` | medium | [Link](https://github.com/onecx/onecx-portal-ui-libs/security/code-scanning/36) | This assignment may alter Object.prototype if a malicious '__proto__' string is injected from library input.\n |
| onecx-portal-ui-libs | `js/shell-command-injection-from-environment` | medium | [Link](https://github.com/onecx/onecx-portal-ui-libs/security/code-scanning/24) | This shell command depends on an uncontrolled absolute path.\nThis shell command depends on an uncontrolled absolute path.\n |
| onecx-integration-tests | `js/clear-text-logging` | high | [Link](https://github.com/onecx/onecx-integration-tests/security/code-scanning/1) | This logs sensitive data returned by an access to password as clear text.\n |
