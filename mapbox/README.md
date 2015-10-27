# Mapbox Basemaps

These basemaps are powered by the [Mapbox](https://www.mapbox.com/) map service.

## How to get started

To use and/or edit these basemaps, you will need:

* A mapbox account
* [Mapbox Studio Classic](https://www.mapbox.com/mapbox-studio-classic/)

Once you have all that set up, you can clone this repository, and open the .tm2
file you are interested in with Mapbox Studio Classic.

## Reusing the basemaps

As of today, Mapbox stores the ID of every basemap in the `project.yml` file. This ID is strictly linked to the account of the owner of the map, and can't be reused with another account.

Therefore, the (rather clunky) process to reuse (and edit) a basemap under a different account is as follows:

* Clone this repository/Download the desired .tm2 folder
* Open the `project.yml` file, find the line with `mapid: the-map-id`, and remove whatever is after the colon symbol.
* Open the .tm2 folder with Mapbox Studio Classic
* In the `Settings` section, update the name and description of the basemap
* Save, and upload to Mapbox

This will trigger the creation of a new map ID, under the account you've signed into.
