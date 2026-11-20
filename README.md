# Ender-Pouch
Adds the Ender Pouch item—a bundle that stores items in a pocket dimension, retrievable from your Ender Chest.

Based on original implementation by PearUhDox for [Cartographer](https://github.com/pearuhdox/Cartographer-2.0)

Functionality
---
Ender Pouches can be crafted using a Bundle and an Eye of Ender. Any item placed inside is stored in a pocket dimension.<br>
Hitting an Ender Chest with the bundle releases one item stack from your pocket dimension. Sneaking while hitting will release all items stored inside.

Ender Pouches can't be put inside other Ender Pouches.

Resource Pack
---
Ender Pouches comes with an *optional* Resource Pack. This comes with a custom item texture, sound events for subtitles, and lang files for translation.<br>
It is not required, but is recommended to have.

Technical
---
Ender Pouches can be manually given via ``/loot give @s loot ender_pouch:ender_pouch``.<br>
To uninstall the pack, run ``/function ender_pouch:uninstall``. This opens a menu that lets you release all stored items before clearing all data.

``/function ender_pouch:debug`` shows the current version for Minecraft and the Ender Pouches datapack.

Items with custom_data ``ender_pouch:{block:1b}`` won't be able to be stored by the Ender Pouch.

Ender Pouches follow Smithed conventions. Learn more about them [here](https://docs.smithed.dev/conventions/).<br>
Versioning uses context_int_provider tags ``#ender_pouch:(major/minor/patch)``, and predicate tag ``#ender_pouch:installed`` for installation.
