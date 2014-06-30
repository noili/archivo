archivo
=======



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

###TODO:

Casos de Uso

Mover un expediente

-busco un determinado expediente
-selecciono otra oficina
-el expediente se movio

select o combo box
submit
