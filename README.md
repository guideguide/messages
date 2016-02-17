# GuideGuide i18n

This repo contains the translations for all the messages that appear in GuideGuide. New translations are welcome! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for more information.

## Inclusion in GuideGuide

Once I merge a pull request, I will include the update in the next release of GuideGuide. I will create a new release for a translation edit if:

- A new language is added

- A functionality-affecting typo is fixed

I will not create new releases for minor typos or modifications based on translation taste.

## Contributing

The messages file is written in CoffeeScript. However, you don’t really need CoffeeScript experience to contribute a translation. If you copy what you see in the file, you’ll probably be fine.

### Modifying an existing translation

Make your change and submit a pull request.

### Adding a new translation

1. Determine your locale code. To determine the locale code for your current Photoshop version, open the Photoshop application folder, then look in the `Locales` folder, in which you will find a folder called something like `en_US` (yours will be different, depending on your language). This is your locale code.

1. Look for the `supportedLocales` array in [src/messages.coffee](src/messages.coffee) and add your locale code (note that the convention is all lowercase, with an underscore). CoffeeScript arrays to not require commas.

1. Find the `library:` section of [src/messages.coffee](src/messages.coffee). For each item in the list, add a new line, using your locale code. This is your translation for the message listed.

1. Translate each message. Each message includes a comment that describes where in the UI it appears to aid with context.

1. Once you've made all of your translations, submit a pull request.

### Conventions

Please respect the conventions of the file.

- Locale codes are lowercase, with an underscore.

- Strings are wrapped in double quotes `""`

- Indent using spaces
