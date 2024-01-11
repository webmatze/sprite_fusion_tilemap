# Ruby Tilemap Loader for Sprite Fusion JSON Export
## Introduction
This Ruby Tilemap Loader is designed to work with the JSON export format of [Sprite Fusion](https://www.spritefusion.com/), an online Tilemap Generator widely used in game development. This README provides you with all the necessary information to get started with using this loader in your projects.

## Features
- Seamless Integration: Easily load and manage tilemaps exported from Sprite Fusion.
- Optimized for Ruby: Tailored to fit into Ruby-based game development workflows.
- Flexible and Customizable: Easily adaptable to various game development needs.

## Prerequisites
Before you begin, ensure you have the following installed:

- Ruby (Version 3.0 or later)

## Usage
Here's a quick guide on how to use the Ruby Tilemap Loader in your project:

1. Export your tilemap from Sprite Fusion in JSON format.
2. Include the Tilemap Loader in your Ruby project.
3. Load the tilemap using the following code snippet:

```ruby
# Sample code demonstrating how to load a tilemap
path = "#{File.dirname(__FILE__)}/data/tilemap.json"
tilemap = SpriteFusion::Tilemap.load(path)
```

## API Reference
[Provide a brief overview of the main classes and methods in your loader, including any important parameters and return types.]

## Examples
Here are some examples of how to use the Tilemap Loader in various scenarios:

```ruby
# get the tile size
size = tilemap.tile_size

# get the map width and height
width = tilemap.map_width
height = tilemap.map_heigt

# iterate over the layers
tilemap.layers.each do |layer|
  puts layer.name
  puts "is colliding layer: #{layer.collider?}"
  puts "number of tiles: #{layer.tiles.size}"

  # iterate over the tiles
  layer.tiles.each do |tile|
    puts "Tile sprite index: #{tile.id}"
    puts "Tile position on map: #{tile.x}:#{tile.y}"
  end
end
```

## Contributing
Contributions to the Ruby Tilemap Loader are always welcome, whether it's improving documentation, adding new features, or fixing bugs.

## License
This project is licensed under the [MIT] - see the LICENSE file for details.

## Acknowledgments
- Thanks to [Hugo Duprez](https://www.hugoduprez.com/) for his excellent [Sprite Fusion](https://www.spritefusion.com/) Tilemap Generator.
