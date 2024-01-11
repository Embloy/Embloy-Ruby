# Embloy Ruby

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

# Replace 'YOUR_CLIENT_TOKEN' with your actual client token
client = Embloy::Client.new('YOUR_CLIENT_TOKEN')
redirect_url = client.make_request
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
