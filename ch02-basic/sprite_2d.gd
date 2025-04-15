# extends关键字定义当前脚本所继承或者扩展的类，这个脚本继承Sprite2D节点所有属性和方法，包括Sprite2D的基类Node2D、CanvasItem、Node等
extends Sprite2D

# gdscript中使用#作为注释
# 在gdscript中定义变量使用关键字var
# 可以将一个gdscript脚本看作是面向对象设计中的一个类型，定义全局变量就是定义这个类身上的属性
# GDScript：类（节点）使用 PascalCase（大驼峰命名法），变量和函数使用 snake_case（蛇形命名法），常量使用 ALL_CAPS（全大写)
var speed = 400
var angular_speed = PI

# 以下划线开头的函数是godot内置的虚函数，允许被重写
# init方法将在节点初始化时执行
func _init():
	print("init")
	
func _ready():
	# 获取子节点的方法
	var timer = get_node("Timer")
	# 连接timeout到_on_timer_timeout
	timer.timeout.connect(_on_timer_timeout)

# process方法
func _process(delta: float) -> void:
	# var direction = 0
	# Input是一个全局的单例实例，可以拿到输入(键盘、鼠标)事件
	# if Input.is_action_pressed("ui_left"):
		# direction = -1
	# if Input.is_action_pressed("ui_right"):
		# direction = 1

	# rotation是继承自父类Node2D的属性，值表示当前元素的旋转角度[default:0.0]
	# rotation += angular_speed * direction * delta
	#var velocity = Vector2.UP.rotated(rotation) * speed
	#position += velocity * delta
	# var velocity = Vector2.ZERO
	# if Input.is_action_pressed("ui_up"):
		# velocity = Vector2.UP.rotated(rotation) * speed

	# position是继承自父类Node2D的属性，值表示元素的相对位置[default:Vector2(0.0,0.0)]
	# position += velocity * delta
	rotation += angular_speed * delta

# 信号是godot中跨节点通信的机制，可以算是一个观察者模式
func _on_button_pressed() -> void:
	# 取反设置
	set_process(not is_processing())
	
func _on_timer_timeout():
	visible = not visible
