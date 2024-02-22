# Design Patterns

Types: Creational, structural, behavioural

## Creational
-> All about diferrent ways to create objects

### Factory
useful when the type of objects to create is determined dynamically at runtime.
![factory pattern](./images/factory_pattern.jpeg)

### Builder
useful when an object needs to be created with many optional components or configurations.

#### Step 1: Product Class
First, we define the Car class that we want to build.

```
class Car:
    def __init__(self):
        self.features = []

    def add_feature(self, feature):
        self.features.append(feature)

    def describe(self):
        return f"This car has {' and '.join(self.features)}."
```

#### Step 2: Builder Interface
Define a Builder interface with methods for adding features and building the final product.

```
class CarBuilder:
    def add_gps(self):
        pass

    def add_sunroof(self):
        pass

    def add_automatic_transmission(self):
        pass

    def build(self):
        pass
```

#### Step 3: Concrete Builder
Implement the concrete builder that follows the Builder interface.

```
class ConcreteCarBuilder(CarBuilder):
    def __init__(self):
        self.car = Car()

    def add_gps(self):
        self.car.add_feature("GPS")
        return self  # Return self to allow chaining

    def add_sunroof(self):
        self.car.add_feature("sunroof")
        return self  # Return self to allow chaining

    def add_automatic_transmission(self):
        self.car.add_feature("automatic transmission")
        return self  # Return self to allow chaining

    def build(self):
        return self.car
```

#### Step 4: Director (Optional)
A Director class, which is optional, can be used to encapsulate the construction logic for a specific kind of product.

```
class CarDirector:
    @staticmethod
    def construct_sports_car(builder):
        return builder.add_gps().add_sunroof().build()

    @staticmethod
    def construct_city_car(builder):
        return builder.add_automatic_transmission().build()
```

### Singleton

```
class DatabaseConnection {
    // Hold the class instance.
    private static $instance = null;
    private $connection;

    // The database configuration
    private $host = "localhost";
    private $username = "user";
    private $password = "password";
    private $database = "example_db";

    // The constructor is private to prevent initiation with `new`
    private function __construct() {
        $this->connection = new mysqli($this->host, $this->username, $this->password, $this->database);

        if (mysqli_connect_error()) {
            die("Database connection failed: " . mysqli_connect_error());
        }
    }

    // The object is created from within the class itself
    // only if the class has no instance.
    public static function getInstance() {
        if (self::$instance == null) {
            self::$instance = new DatabaseConnection();
        }

        return self::$instance;
    }

    public function getConnection() {
        return $this->connection;
    }

    // Prevent the instance from being cloned
    private function __clone() {}

    // Prevent from being unserialized
    private function __wakeup() {}
}

// Usage
$db1 = DatabaseConnection::getInstance()->getConnection();
$db2 = DatabaseConnection::getInstance()->getConnection();

// $db1 and $db2 contain the same instance of the DatabaseConnection class
```

## Structural
-> All about the relationship between this objects

## Behavioural
-> All about the interaction or communication about  
