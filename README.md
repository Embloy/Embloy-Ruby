# [Embloy Ruby](https://rubygems.org/gems/embloy) &middot; [![GitHub license](https://img.shields.io/badge/license-AGPL3.0-blue.svg)](https://github.com/Embloy/Embloy-Ruby/blob/main/LICENSE) [![gem version](https://img.shields.io/gem/v/embloy.svg?style=flat)](https://rubygems.org/gems/embloy) [![Issues](https://img.shields.io/github/issues/Embloy/Embloy-Ruby)](https://github.com/Embloy/Embloy-Ruby/issues) [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/Embloy/Embloy-Ruby/pulls)

Embloy's Ruby SDK for interacting with your Embloy integration.

## Usage

Install Embloy-Ruby SDK:

```Bash
gem install embloy
```

Integrate it in your service:

```Ruby
# In your Rails application or script
require 'embloy'

# Make sure to replace 'CLIENT_TOKEN' in your .env file with your actual client token
session = {
    mode: "job",
    job_slug: "job#1",
    success_url: "mypage.com/success",
    cancel_url: "mypage.com/failure"
}
client = Embloy::Client.new(ENV.fetch('CLIENT_TOKEN'), session)
redirect_url = client.make_request

redirect_to(redirect_url, allow_other_host: true)
```

## Build Gem

```Bash
gem build embloy.gemspec
```

## Publish Gem

```Bash
gem push embloy-0.x.y.gem
```

---

© Carlo Bortolan, Jan Hummel

> Carlo Bortolan &nbsp;&middot;&nbsp;
> GitHub [@carlobortolan](https://github.com/carlobortolan) &nbsp;&middot;&nbsp;
> contact via [bortolanoffice@embloy.com](mailto:bortolanoffice@embloy.com)
>
> Jan Hummel &nbsp;&middot;&nbsp;
> GitHub [@github4touchdouble](https://github.com/github4touchdouble) &nbsp;&middot;&nbsp;
> contact via [hummeloffice@embloy.com](mailto:hummeloffice@embloy.com)
