class Engine
  def initialize(scene_map)
    @scene_map = scene_map
  end

  class Scene
    def enter(0)
      exit(0)
    end
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finish')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end
    current_scene.enter()
  end
end

class Map
  @@scenes = {'beginning' => BeginningScene.new(),
    'koi_fish_pond' =>KoiFishPondScene.new(),
    'cabin' => Cabin.new(),
    'treehouse' => TreehouseScene.new(),
    'bridge' => Bridge.new(),
    'shrine' => ShrineScene.new(),
    'death' => DeathScene.new(),
    'finish' => FinishScene.new()
  }

  def initialize(start_scene)
    @start_scene = start_scene
  end
  def next_scene(scene_name)
    value = @@scenes[scene_name]
    return value
  end
  def opening_scene()
    return next_scene(@start_scene)
  end
end
