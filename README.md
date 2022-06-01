```
👩  This project is part of the passbolt "lab"!
⚗️   It is used to illustrate an article or as a conversation starter.
🧪  Use at your own risks!
```

## Copyright & License

(c) 2022 Passbolt SA

Passbolt is registered trademark of Passbolt S.A.

MIT No Attribution - https://opensource.org/licenses/MIT-0
# balena-passbolt

Deploy passbolt on your raspberry from https://www.balena.io/

## Setup and configuration

Running this project is as simple as deploying it to a balenaCloud application. You can do it in just one click by using the button below:

[![deploy button](https://balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/passbolt/lab-passbolt-balena&defaultDeviceType=raspberry-pi)

## Configuration

The following [Device Variables](https://www.balena.io/docs/learn/manage/variables/#variables) might be required for proper scaling and resolutions:

### database container

| Variable name       | Description         | Default value |
|---------------------|---------------------|---------------|
| MYSQL_ROOT_PASSWORD | MySQL root password | rootpassword  |
| MYSQL_DATABASE      | Database name       | passbolt      |
| MYSQL_USER          | MySQL username      | passbolt      |
| MYSQL_PASSWORD      | MySQL user password | P4ssb0lt      |
| TZ                  | Timezone            | Europe/Paris  |

### passbolt container

| Variable name                | Description                   | Default value                                        |
|------------------------------|-------------------------------|------------------------------------------------------|
| APP_FULL_BASE_URL            | Passbolt base URL             | https://a-very-long-generated-id.balena-devices.com/ |
| DATASOURCES_DEFAULT_HOST     | Database hostname             | db                                                   |
| DATASOURCES_DEFAULT_USERNAME | Database username             | passbolt                                             |
| DATASOURCES_DEFAULT_PASSWORD | Database user password        | P4ssb0lt                                             |
| DATASOURCES_DEFAULT_DATABASE | Database name                 | passbolt                                             |
| EMAIL_TRANSPORT_DEFAULT_PORT | SMTP Server port              | 587                                                  |
| EMAIL_TRANSPORT_DEFAULT_HOST | SMTP Server hostname          | smtp.domain.tld                                      |
| EMAIL_DEFAULT_FROM           | passbolt "From" email address | admin@domain.tld                                     |