# Layout bépo

Mappage personnalisé bépo pour linux, macos et windows.
Plus d’infos sur les possibilités de personnalisation ici : https://bepo.fr/wiki/Trucs_et_astuces

## Changements apportés :

| bépo original | modif  | modif | modif | modif       |
|               | direct | shift | alt   | alt + shift |
|---------------|--------|-------|-------|-------------|
| «             |        |       |       |             |
| »             |        |       |       |             |
| ^             |        |       |       |             |
| !             |        |       |       |             |
| ù             |        |       |       |             |
| ¨             |        |       |       |             |

# Fichiers

## Linux
Fichier "fr" à placer dans "/usr/share/X11/xkb/symbols"
La partie avec les changements apportés au layout bépo classique se trouvent à la fin du fichier

```
xkb_symbols "bepo-afg" {

    ...

};

```

## Macos
Fichier "bepo - afg" à placer dans "~/Library/Keyboard Layouts/"



