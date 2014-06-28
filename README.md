archivo
=======

TODO

Hacer el CRUD para person, office, step, Record

Person
name
dni
has_many :steps

Office
name
has_many :steps

Record
has_many :steps

Step
belongs_to :office
belongs_to :person
belongs_to :office
