# Is Vue on Top Already

If you're like me, you believe this is the year of vuejs. 🚀

I have created this small website to check, from time to time, if vue has more stars than react.

I bet it will. 😎

Checkout it live at [Heroku](https://is-vue-at-the-top.herokuapp.com/).

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

- Ruby 2.1.5
- Bundler
- Github API token in order to remove requests limits. Go [here](https://github.com/settings/tokens) to create one - Add a read permission to public repositories.

```bash
$ gem install bundler
$ export TOKEN=XXXXXXXXXXXXXXX # To set the token as an environment variable
```

### Installing

To get it running localy, start by cloning this repository and then at the root folder run the following commands to install dependencies and start a development server.

```
$ bundle install
$ rackup
```

You can now access the local version at `http://localhost:9292/`.

## Deployment

Can be deployed directly to herokuapp.com. Simply create a new heroku project and push to the new heroku remote. Don't forget to add the `token` as an env variable (config vars).

## Built With

* [Sinatra](http://sinatrarb.com/) - The web framework used
* [RubyGems](https://rubygems.org/) - Dependency Management
* [Sass](https://sass-lang.com/) - CSS with superpowers
* [FontAwesome](https://fontawesome.com/) - Icons. Easy. Done.

## Contributing

Please read [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.MD) for details on our code of conduct. Feel free to open any issue and/or submit a pull request. 😎

## Authors

* **André Varandas** - *Initial work* - [André Varandas](https://github.com/AndreVarandas).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.