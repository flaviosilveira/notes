## PHP Late Static Binding

Can be used to reference the called class in a context of static inheritance.

```
class A
{
	public static function who()
	{
		print __CLASS__;
	}

	public static function test()
	{
		self::who();
	}
}

class B extends A
{
	public static function who()
	{
		echo __CLASS__;
	}
}

B::test(); // result A

```


```
class A
{
	public static function who()
	{
		print __CLASS__;
	}

	public static function test()
	{
		static::who(); // using late static binding
	}
}

class B extends A
{
	public static function who()
	{
		echo __CLASS__;
	}
}

B::test(); // result B

```
