seed_params = [
{name: 'Restaurant de Paul',
address: 'Rue de Paul',
phone_number: '06 de Paul',
category: 'chinese'},
{name: 'Restaurant de John',
address: 'Rue de John',
phone_number: '06 de John',
category: 'italian'},
{name: 'Restaurant de Bob',
address: 'Rue de Bob',
phone_number: '06 de Bob',
category: 'chinese'},
{name: 'Restaurant de Youri',
address: 'Rue de Youri',
phone_number: '06 de Youri',
category: 'japanese'},
{name: 'Restaurant de Alban',
address: 'Rue de Alban',
phone_number: '06 de Alban',
category: 'belgian'}]

seed_params.each { |params| Restaurant.create(params) }
