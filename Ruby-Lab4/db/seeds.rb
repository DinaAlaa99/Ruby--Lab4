# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).



r1 = Role.create({ name: 'Regular', description: 'Can read books' })
r2 = Role.create({ name: 'Seller', description: 'Can read and create books. Can update and destroy own books' })
r3 = Role.create({ name: 'Admin', description: 'Can perform any CRUD operation on any resource' })

u1 = Admin.create({ name: 'Dina', email: 'Dina@gmail.com', password: '123456', password_confirmation: '123456', role_id: r1.id })
u2 = Admin.create({ name: 'Reham', email: 'Reham@gmail.com', password: '123456', password_confirmation: '123456', role_id: r2.id })
u3 = Admin.create({ name: 'Rowan', email: 'Rowan@gmail.com', password: '123456', password_confirmation: '123456', role_id: r2.id })


i1 = Book.create({ name: 'Data Structure', description: 'Stylish Cs', price: 100, admin_id: u2.id })
i2 = Book.create({ name: 'Clean Code', description: 'Cs', price: 100, admin_id: u2.id })
i3 = Book.create({ name: 'Algorithms', description: 'CS', price: 100, admin_id: u3.id })
i4 = Book.create({ name: 'OOP', description: 'CS', price: 100, admin_id: u3.id })