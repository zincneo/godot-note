# gdextension

- gdextension是godot提供的扩展其他语言编写节点模块的导入文件
- 下面以rust的godot扩展为例

```
[configuration]
entry_symbol = "gdext_rust_init"
compatibility_minimum = 4.1
reloadable = true

[libraries]
windows.debug.x86_64 =  "res://gdnext/target/debug/gdnext.dll"
windows.release.x86_64 =  "res://extensions/gdnext.dll"
```

- `gdnext.gdextension`
    - 文件名任意，godot会自动热重载
    - 建议和扩展的rust-crate同名
    - `entry_symbol`指定入口，默认值就是`gdext_rust_init`
    - `compatibility_minimum`指定最低兼容的版本
    - `libraries`指定不同版本要连接到什么动态链接库

## crate

- rust包必须导出为c动态链接库，且安装godot依赖
    - Cargo.toml
    ```toml
    [dependencies]
    godot = "0.2.4"

    [lib]
    crate-type=["cdylib"]
    ```
- 入口指定
  - 必须为一个自定义的单元结构体实现特征`godot::prelude::ExtensionLibrary`才能找到对应的入口
