# 每个gd文件都是一个类的定义
# 定义当前文件的类名
class_name MyClass

# extends 指定继承什么类
# 要当作脚本运行请继承SceneTree
extends SceneTree

# 变量
# 全局变量会作为类的属性
var num = 5
var s = "String"
var arr = [1, 2, 3]
var dict = {"key": "value", 2: 3}
var other = { key = "value", other_key = 2 }
var type_var: int
var inferred_type := "String"

# 常量
const ANSWER = 42
const THE_NAME = "Charly"

# 枚举
enum {UNIT_NEUTRAL, UNIT_ENEMY, UNIT_ALLY}
enum Named {THING_1, THING_2, ANOTHER_THING = -1}

# 内建向量类型
var v2 = Vector2(1, 2)
var v3 = Vector3(1, 2, 3)

# 自定义方法
func some_function(param1, param2, param3):
	# 局部变量、常量
	const local_const = 5

	# if elif else 块
	if param1 < local_const:
		print(param1)

	# for循环
	for i in range(20):
		print(i)

	# match表达式，和rust一样使用_表示默认分支
	match param3:
		3:
			print("param3 is 3!")
		_:
			print("param3 isn't 3!")

# 复写父类已有的方法
func something(p1, p2):
	# 调用父类同名方法
	super(p1, p2)
	# 调用父类不同名方法
	super.other(p1)

# 定义在该类中可见的内部类
class Somthing:
	var a = 10

# 相对其他语言运算符补充
# 支持乘方**,
# 等待信号或者协程awiat
# 类型检查is 和 is not `variable is Type`
# 类型转换 as
# 与或非在godot中建议使用 and or not 不建议使用 && || !
# 整数和浮点数可以使用_分割 0b11_00_11_00  # Equal to 0b11001100

# 字面量说明
# ""包裹的是常规字符串 "Hello"
# """"""三对双引号包裹常规字符串 """Hello"""
# r""原始字符串
# &"name" StringName
# ^"Node/Label" NodePath
# $NodePath 不是字面量，是get_node("NodePath")的语法糖
# %UniqueNode 不是字面量，是get_node("%UniqueNode")的语法糖

# 注解
# 会影响编辑器对脚本代码产生的效果
# 需要使用@符号开头
@export_range(1, 100, 1, "or_greater")
var ranged_var: int = 50

# @onready注解会推迟变量初始化到调用_ready函数的时刻
@onready var my_label = get_node("MyLabel")

# godot中提供self关键字在方法中访问实例本身，也提供static关键字修饰方法使其成为静态类方法(不可以使用self)
