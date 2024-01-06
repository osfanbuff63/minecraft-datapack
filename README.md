# minecraft-datapack

## What is this?

A template for a Minecraft datapack on GitHub! This is meant for new players to the datapack community, who don't know much about how datapacks work, or the dos and don'ts of datapacks. Check out the data folder to learn more! This is currently for Minecraft 1.20.3/1.20.4, but there's [details on how to downgrade from this template below](#downgrading-the-pack).

It's worth noting that this is *not* the vanilla datapack of Minecraft (as publishing that would violate the Minecraft EULA), but rather a template for a custom one.

This also includes:

- A GitHub Actions CI workflow for Minecraft datapacks
- A .gitignore file (you may need to adapt this to your needs, this gitignore includes [VS Code](https://code.visualstudio.com), [Git](https://git-scm.com/) spare files, Windows, and [Notepad++](https://notepad-plus-plus.org/))

## License

Licensed under the [CC0-1.0 license](LICENSE.md). Feel free to do anything you want, pretty much :D.

## Credit

Thanks to [**@M3FF1N**](https://github.com/M3FF1N) for the `pack.png`!

## Information on files in the root directory

### pack.mcmeta and pack.png

These are two files that determine, in part, your datapack's apperance in the Minecraft menu screen.

#### pack.mcmeta

The `pack.mcmeta` file is what tells Minecraft what version of Minecraft your pack is made for, and users of what it is about. It is written in JSON, so be careful!  This file is required, otherwise your datapack will not load. First, let's start with `pack_format`:

The `pack_format` key is what tells Minecraft what version of Minecraft your pack is made for. In most cases, datapacks will work in a version greater than the version it was made for, but not always the other way around. Here's a handy table:

| Minecraft version | `pack_format` |
|-------------------|---------------|
| 1.13 - 1.14.4     | 4             |
| 1.15 - 1.16.1     | 5             |
| 1.16.2 - 1.16.5   | 6             |
| 1.17 - 1.17.1     | 7             |
| 1.18 - 1.18.1     | 8             |
| 1.18.2            | 9             |
| 1.19 - 1.19.3     | 10            |
| 1.19.4            | 12            |
| 1.20 - 1.20.1     | 15            |
| 1.20.2            | 18            |
| 1.20.3 - 1.20.4   | 26            |

You can also check these on the [Minecraft Wiki](https://minecraft.wiki/w/Pack_format#List_of_data_pack_formats), where there is more information about what changed between versions.

Sample `pack.mcmeta` (you can also see in the example datapack [here](pack.mcmeta)):

```json

{
    "pack": {
      "pack_format": 26,
      "description": "§6§kM§r §6Made by §3osfanbuff63 §6§kK§r - v1.0.0"
    }
}

```

The description key ideally describes your datapack, or its version, or something like that. The above example shows my username (since I created it) and v1.0.0 - showing this is version 1.0.0.

#### pack.png

The `pack.png` file is the image that will appear when the menu for datapacks is opened, representing your datapack. It is not required. It can be any image file, but it must be of the `.png` file type, otherwise Minecraft will not recognize it. Many image editors, such as [GIMP](https://gimp.org), include functionality to convert image files by saving them in a different format. If your ideal image is a `.jpg` or `.jpeg` file and you don't have a photo editor installed, you can use a tool like [this one](https://jpg2png.com/) to convert them.

## Downgrading the pack

This template is intended for Minecraft 1.20.3/1.20.4, but you may not want to use that version. Changing the template to use an older version is pretty simple, but be sure you don't use a feature from newer versions. The [Minecraft Wiki](https://minecraft.wiki/w/Pack_format#List_of_data_pack_formats) has a page with all the `pack_format` versions and the changes in those versions.

For example, if you wanted to change to Minecraft 1.20.2, you would change the `pack_format` key to match that:

```json

{
    "pack": {
      "pack_format": 18,
      "description": "§6§kM§r §6Made by §3osfanbuff63 §6§kK§r - v1.0.0"
    }
}

```
