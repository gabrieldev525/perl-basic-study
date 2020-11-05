use lib './modules/';
use Person;
use Employee;

$person = new Person("Gabriel Victor", 18, "Brazil");
$person->show();
print $person->{_name} . "\n";


$employee = new Employee("João alencar", 35, "EUA");
$employee->show();