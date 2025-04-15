# 基础示例

## project.godot文件

- 每个项目下只有，固定为`project.godot`
- 整个项目的配置文件
- `[application]`
    - `run/main_sence`字段定义了应用加载的主场景是什么
    - `config/name`定义项目的名称

## sence.tscn文件

- 每个场景一个，文件名为`scence_name.tscn`
- 定义场景中有哪些内容
- `[node]`定义节点信息
- `[connect]`定义信号连接
    - `[connect signal="signal_name" from="node_name_1" to="node_name_2" method="method_name"]`
    - 当node_name_1节点触发signal_name的时候node_name_2节点触发方法method_name

## gd脚本

- 自定义文件名，扩展名为`.gd`
- 通过在编辑器中绑定到节点上，自动在包含节点的`.tscn`中绑定对应的文件

## 基本概念

- 一个GDScript就像是定义一个类型，或者说是重写godot提供给我们的基类
- 因此第一行固定为`extends BaseClass`
- 在GDScript中定义的全局作用域变量将会作为该类的属性
- 管理和运行节点由Godot自己实现
- 下划线通开头的函数用来表示虚函数(父类有同名方法，可以重写，实现面向对象中的多态特性)

## 绑定信号

- 在编辑器中进行绑定，这种操作数据会写入到`tscn`中
- 在脚本中绑定，这样绑定主要要用到两个方法
    - get_node获取到节点的引用
    - connect连接方法
