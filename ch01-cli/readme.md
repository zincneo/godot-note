# 命令行创建Godot项目

## 创建项目

- godot会将存在`project.godot`的文件夹识别为godot项目

```sh
mkdir project_name
cd project_name
touch project.godot
```

## 运行编辑器

- 必须位于项目文件夹内

```sh
godot -e
```

## 创建场景

- 场景的扩展名为`tscn`

```sh
touch main.tscn
```

## 创建脚本

```sh
touch main.gd
```

## 运行场景

```sh
godot -d scene.tscn
```

## 运行脚本

- 可以从命令行运行 .gd 脚本
- 此功能在大型项目中特别有用，例如，用于资产的批量转换或自定义导入/导出
- 该脚本必须继承自 SceneTree 或 MainLoop
- 脚本hello.gd
  ```gdscript
  #!/usr/bin/env -S godot -s
  extends SceneTree

  func _init():
    print("Hello!")
    quit()
  ```
- 运行脚本
  ```sh
  godot -s sayhello.gd
  ```
