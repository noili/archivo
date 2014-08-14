archivo
=======

###DONE:

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

Casos de Uso

Mover un expediente

-busco un determinado expediente
-selecciono otra oficina
-el expediente se movio

select o combo box
submit

rails g rails_backend:install

rails g rails_backend:register persons

rails g rails_backend:register file_records

rails g rails_backend:register offices

add ransack, will_paginate

###TODO:

Test step recibe un email(string) y crea o agrega la persona con ese email.

Cuando creo un nuevo Step con una persona inexistente tiene que redireccionar al
edit de persona.




