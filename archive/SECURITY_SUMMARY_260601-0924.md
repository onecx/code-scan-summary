# Security Summary

| Repository | Critical | High | Medium | Low | Null |
|------------|----------|------|--------|-----|------|
| 🟧 onecx-portal-ui-libs | 0 | 1 | 3 | 0 | 0 |
| 🟩 onecx-chat-ui | 0 | 0 | 0 | 0 | 0 |
| 🟧 onecx-shell-ui | 0 | 25 | 3 | 2 | 0 |
| 🟩 onecx-ai-provider-ui | 0 | 0 | 0 | 0 | 0 |
| 🟩 onecx-notification-ui | 0 | 0 | 0 | 0 | 0 |
| 🟩 onecx-workspace | 0 | 0 | 0 | 0 | 0 |
| 🟩 bundle | 0 | 0 | 0 | 0 | 0 |
| 🟩 onecx-infra-kc-operator | 0 | 0 | 0 | 0 | 0 |
| 🟧 onecx-integration-tests | 0 | 1 | 0 | 0 | 0 |
| 🟩 onecx-local-env-cli | 0 | 0 | 0 | 0 | 0 |
# Security Details
| Repository | Rule ID | Severity | Alert URL | Message |
|------------|---------|----------|-----------|---------|
| onecx-portal-ui-libs | `js/polynomial-redos` | high | [Link](https://github.com/onecx/onecx-portal-ui-libs/security/code-scanning/54) | This regular expression that depends on library input may run slow on strings starting with '/*' and with many repetitions of 'a/*'.\nThis regular expression that depends on library input may run slow on strings starting with '/*' and with many repetitions of 'a/*'.\nThis regular expression that depends on library input may run slow on strings starting with '/*' and with many repetitions of 'a/*'.\nThis regular expression that depends on library input may run slow on strings starting with '/*' and with many repetitions of 'a/*'.\n |
| onecx-portal-ui-libs | `js/prototype-polluting-assignment` | medium | [Link](https://github.com/onecx/onecx-portal-ui-libs/security/code-scanning/37) | This assignment may alter Object.prototype if a malicious '__proto__' string is injected from library input.\n |
| onecx-portal-ui-libs | `js/prototype-polluting-assignment` | medium | [Link](https://github.com/onecx/onecx-portal-ui-libs/security/code-scanning/36) | This assignment may alter Object.prototype if a malicious '__proto__' string is injected from library input.\n |
| onecx-portal-ui-libs | `js/shell-command-injection-from-environment` | medium | [Link](https://github.com/onecx/onecx-portal-ui-libs/security/code-scanning/24) | This shell command depends on an uncontrolled absolute path.\nThis shell command depends on an uncontrolled absolute path.\n |
| onecx-shell-ui | `CVE-2026-44492` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/753) | Package 'axios@1.15.2' is vulnerable to 'CVE-2026-44492' (also known as 'GHSA-pjwm-pj3p-43mv').\n |
| onecx-shell-ui | `CVE-2026-44492` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/752) | Package 'axios@1.15.0' is vulnerable to 'CVE-2026-44492' (also known as 'GHSA-pjwm-pj3p-43mv').\n |
| onecx-shell-ui | `CVE-2026-44492` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/751) | Package 'axios@1.15.2' is vulnerable to 'CVE-2026-44492' (also known as 'GHSA-pjwm-pj3p-43mv').\n |
| onecx-shell-ui | `CVE-2026-44705` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/750) | Package 'tmp@0.2.5' is vulnerable to 'CVE-2026-44705' (also known as 'GHSA-ph9p-34f9-6g65').\n |
| onecx-shell-ui | `CVE-2026-44705` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/749) | Package 'tmp@0.2.4' is vulnerable to 'CVE-2026-44705' (also known as 'GHSA-ph9p-34f9-6g65').\n |
| onecx-shell-ui | `CVE-2026-44705` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/748) | Package 'tmp@0.2.5' is vulnerable to 'CVE-2026-44705' (also known as 'GHSA-ph9p-34f9-6g65').\n |
| onecx-shell-ui | `CVE-2026-44705` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/747) | Package 'tmp@0.2.5' is vulnerable to 'CVE-2026-44705' (also known as 'GHSA-ph9p-34f9-6g65').\n |
| onecx-shell-ui | `CVE-2026-44705` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/746) | Package 'tmp@0.2.5' is vulnerable to 'CVE-2026-44705' (also known as 'GHSA-ph9p-34f9-6g65').\n |
| onecx-shell-ui | `CVE-2026-44705` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/745) | Package 'tmp@0.2.5' is vulnerable to 'CVE-2026-44705' (also known as 'GHSA-ph9p-34f9-6g65').\n |
| onecx-shell-ui | `CVE-2026-44705` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/744) | Package 'tmp@0.2.4' is vulnerable to 'CVE-2026-44705' (also known as 'GHSA-ph9p-34f9-6g65').\n |
| onecx-shell-ui | `CVE-2026-44490` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/743) | Package 'axios@1.15.2' is vulnerable to 'CVE-2026-44490' (also known as 'GHSA-898c-q2cr-xwhg').\n |
| onecx-shell-ui | `CVE-2026-44490` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/742) | Package 'axios@1.15.0' is vulnerable to 'CVE-2026-44490' (also known as 'GHSA-898c-q2cr-xwhg').\n |
| onecx-shell-ui | `CVE-2026-44490` | medium | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/741) | Package 'axios@1.15.2' is vulnerable to 'CVE-2026-44490' (also known as 'GHSA-898c-q2cr-xwhg').\n |
| onecx-shell-ui | `CVE-2026-44489` | low | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/740) | Package 'axios@1.15.2' is vulnerable to 'CVE-2026-44489' (also known as 'GHSA-654m-c8p4-x5fp').\n |
| onecx-shell-ui | `CVE-2026-44489` | low | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/739) | Package 'axios@1.15.2' is vulnerable to 'CVE-2026-44489' (also known as 'GHSA-654m-c8p4-x5fp').\n |
| onecx-shell-ui | `CVE-2026-44495` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/738) | Package 'axios@1.15.0' is vulnerable to 'CVE-2026-44495' (also known as 'GHSA-3g43-6gmg-66jw').\n |
| onecx-shell-ui | `CVE-2026-44494` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/737) | Package 'axios@1.15.2' is vulnerable to 'CVE-2026-44494' (also known as 'GHSA-35jp-ww65-95wh').\n |
| onecx-shell-ui | `CVE-2026-44494` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/736) | Package 'axios@1.15.0' is vulnerable to 'CVE-2026-44494' (also known as 'GHSA-35jp-ww65-95wh').\n |
| onecx-shell-ui | `CVE-2026-44494` | high | [Link](https://github.com/onecx/onecx-shell-ui/security/code-scanning/735) | Package 'axios@1.15.2' is vulnerable to 'CVE-2026-44494' (also known as 'GHSA-35jp-ww65-95wh').\n |
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
| onecx-integration-tests | `js/clear-text-logging` | high | [Link](https://github.com/onecx/onecx-integration-tests/security/code-scanning/1) | This logs sensitive data returned by an access to password as clear text.\n |
