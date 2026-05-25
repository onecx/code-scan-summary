# Security Summary

| Repository | Critical | High | Medium | Low | Null |
|------------|----------|------|--------|-----|------|
| 🟨 onecx-portal-ui-libs | 0 | 0 | 3 | 0 | 0 |
| 🟧 onecx-shell-ui | 0 | 11 | 19 | 0 | 0 |
| 🟩 onecx-workspace | 0 | 0 | 0 | 0 | 0 |
| 🟩 bundle | 0 | 0 | 0 | 0 | 0 |
| 🟩 onecx-ai-provider-ui | 0 | 0 | 0 | 0 | 0 |
| 🟩 onecx-chat-ui | 0 | 0 | 0 | 0 | 0 |
| 🟩 onecx-notification-ui | 0 | 0 | 0 | 0 | 0 |
| 🟩 onecx-infra-kc-operator | 0 | 0 | 0 | 0 | 0 |
| 🟧 onecx-integration-tests | 0 | 1 | 0 | 0 | 0 |
| 🟩 onecx-local-env-cli | 0 | 0 | 0 | 0 | 0 |
# Security Details
| Repository | Rule ID | Severity | Alert URL | Message |
|------------|---------|----------|-----------|---------|
| onecx-portal-ui-libs | `js/prototype-polluting-assignment` | medium | [Link](https://github.com/onecx/onecx-portal-ui-libs/security/code-scanning/37) | This assignment may alter Object.prototype if a malicious '__proto__' string is injected from library input.\n |
| onecx-portal-ui-libs | `js/prototype-polluting-assignment` | medium | [Link](https://github.com/onecx/onecx-portal-ui-libs/security/code-scanning/36) | This assignment may alter Object.prototype if a malicious '__proto__' string is injected from library input.\n |
| onecx-portal-ui-libs | `js/shell-command-injection-from-environment` | medium | [Link](https://github.com/onecx/onecx-portal-ui-libs/security/code-scanning/24) | This shell command depends on an uncontrolled absolute path.\nThis shell command depends on an uncontrolled absolute path.\n |
| onecx-shell-ui | `CVE-2026-41907` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/734) | Package 'uuid@9.0.1' is vulnerable to 'CVE-2026-41907' (also known as 'GHSA-w5hq-g745-h8pq').\n |
| onecx-shell-ui | `CVE-2026-41907` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/733) | Package 'uuid@8.3.2' is vulnerable to 'CVE-2026-41907' (also known as 'GHSA-w5hq-g745-h8pq').\n |
| onecx-shell-ui | `CVE-2026-41907` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/732) | Package 'uuid@8.3.2' is vulnerable to 'CVE-2026-41907' (also known as 'GHSA-w5hq-g745-h8pq').\n |
| onecx-shell-ui | `CVE-2026-41907` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/731) | Package 'uuid@8.3.2' is vulnerable to 'CVE-2026-41907' (also known as 'GHSA-w5hq-g745-h8pq').\n |
| onecx-shell-ui | `CVE-2026-41907` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/730) | Package 'uuid@8.3.2' is vulnerable to 'CVE-2026-41907' (also known as 'GHSA-w5hq-g745-h8pq').\n |
| onecx-shell-ui | `CVE-2026-41907` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/729) | Package 'uuid@9.0.1' is vulnerable to 'CVE-2026-41907' (also known as 'GHSA-w5hq-g745-h8pq').\n |
| onecx-shell-ui | `CVE-2026-41907` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/728) | Package 'uuid@8.3.2' is vulnerable to 'CVE-2026-41907' (also known as 'GHSA-w5hq-g745-h8pq').\n |
| onecx-shell-ui | `CVE-2026-46417` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/727) | Package '@angular/platform-server@21.2.12' is vulnerable to 'CVE-2026-46417' (also known as 'GHSA-rfh7-fxqc-q52v').\n |
| onecx-shell-ui | `CVE-2026-46417` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/726) | Package '@angular/platform-server@20.3.20' is vulnerable to 'CVE-2026-46417' (also known as 'GHSA-rfh7-fxqc-q52v').\n |
| onecx-shell-ui | `CVE-2026-46417` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/725) | Package '@angular/platform-server@19.2.21' is vulnerable to 'CVE-2026-46417' (also known as 'GHSA-rfh7-fxqc-q52v').\n |
| onecx-shell-ui | `CVE-2026-46417` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/724) | Package '@angular/platform-server@18.2.14' is vulnerable to 'CVE-2026-46417' (also known as 'GHSA-rfh7-fxqc-q52v').\n |
| onecx-shell-ui | `CVE-2026-8723` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/723) | Package 'qs@6.15.1' is vulnerable to 'CVE-2026-8723' (also known as 'GHSA-q8mj-m7cp-5q26').\n |
| onecx-shell-ui | `CVE-2026-8723` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/722) | Package 'qs@6.14.2' is vulnerable to 'CVE-2026-8723' (also known as 'GHSA-q8mj-m7cp-5q26').\n |
| onecx-shell-ui | `CVE-2026-8723` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/721) | Package 'qs@6.15.1' is vulnerable to 'CVE-2026-8723' (also known as 'GHSA-q8mj-m7cp-5q26').\n |
| onecx-shell-ui | `CVE-2026-8723` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/720) | Package 'qs@6.14.2' is vulnerable to 'CVE-2026-8723' (also known as 'GHSA-q8mj-m7cp-5q26').\n |
| onecx-shell-ui | `CVE-2026-8723` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/719) | Package 'qs@6.15.1' is vulnerable to 'CVE-2026-8723' (also known as 'GHSA-q8mj-m7cp-5q26').\n |
| onecx-shell-ui | `CVE-2026-8723` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/718) | Package 'qs@6.14.2' is vulnerable to 'CVE-2026-8723' (also known as 'GHSA-q8mj-m7cp-5q26').\n |
| onecx-shell-ui | `CVE-2026-8723` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/717) | Package 'qs@6.15.1' is vulnerable to 'CVE-2026-8723' (also known as 'GHSA-q8mj-m7cp-5q26').\n |
| onecx-shell-ui | `CVE-2026-8723` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/716) | Package 'qs@6.14.2' is vulnerable to 'CVE-2026-8723' (also known as 'GHSA-q8mj-m7cp-5q26').\n |
| onecx-shell-ui | `CVE-2026-8723` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/715) | Package 'qs@6.15.1' is vulnerable to 'CVE-2026-8723' (also known as 'GHSA-q8mj-m7cp-5q26').\n |
| onecx-shell-ui | `CVE-2026-8723` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/714) | Package 'qs@6.14.2' is vulnerable to 'CVE-2026-8723' (also known as 'GHSA-q8mj-m7cp-5q26').\n |
| onecx-shell-ui | `CVE-2026-45149` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/713) | Package 'brace-expansion@5.0.2' is vulnerable to 'CVE-2026-45149' (also known as 'GHSA-jxxr-4gwj-5jf2').\n |
| onecx-shell-ui | `CVE-2026-45149` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/712) | Package 'brace-expansion@5.0.5' is vulnerable to 'CVE-2026-45149' (also known as 'GHSA-jxxr-4gwj-5jf2').\n |
| onecx-shell-ui | `CVE-2026-45149` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/711) | Package 'brace-expansion@5.0.2' is vulnerable to 'CVE-2026-45149' (also known as 'GHSA-jxxr-4gwj-5jf2').\n |
| onecx-shell-ui | `CVE-2026-6402` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/710) | Package 'webpack-dev-server@5.2.3' is vulnerable to 'CVE-2026-6402' (also known as 'GHSA-79cf-xcqc-c78w').\n |
| onecx-shell-ui | `CVE-2026-6402` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/709) | Package 'webpack-dev-server@5.2.2' is vulnerable to 'CVE-2026-6402' (also known as 'GHSA-79cf-xcqc-c78w').\n |
| onecx-shell-ui | `CVE-2026-6402` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/708) | Package 'webpack-dev-server@5.2.2' is vulnerable to 'CVE-2026-6402' (also known as 'GHSA-79cf-xcqc-c78w').\n |
| onecx-shell-ui | `CVE-2026-6402` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/707) | Package 'webpack-dev-server@5.2.2' is vulnerable to 'CVE-2026-6402' (also known as 'GHSA-79cf-xcqc-c78w').\n |
| onecx-shell-ui | `CVE-2026-6402` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/706) | Package 'webpack-dev-server@5.2.3' is vulnerable to 'CVE-2026-6402' (also known as 'GHSA-79cf-xcqc-c78w').\n |
| onecx-shell-ui | `CVE-2026-45736` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/705) | Package 'ws@8.18.0' is vulnerable to 'CVE-2026-45736' (also known as 'GHSA-58qx-3vcg-4xpx').\n |
| onecx-integration-tests | `js/clear-text-logging` | high | [Link](https://github.com/onecx/onecx-integration-tests/security/code-scanning/1) | This logs sensitive data returned by an access to password as clear text.\n |
