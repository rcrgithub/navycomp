# This file should contain all the record creation needed to seed the database with its default values.
# CREA LOS PAISES
country = Country.create country_name: 'China'
country = Country.create country_name: 'Singapoure'
country = Country.create country_name: 'South Korea'
country = Country.create country_name: 'United Arab Emirates'
country = Country.create country_name: 'Netherlands'
country = Country.create country_name: 'Malaysia'
country = Country.create country_name: 'Taiwan'
country = Country.create country_name: 'Germany'
country = Country.create country_name: 'Belgium'
country = Country.create country_name: 'United States'
country = Country.create country_name: 'Thailand'
country = Country.create country_name: 'Indonesia'
country = Country.create country_name: 'Vietnam'
country = Country.create country_name: 'Sri Lanka'
country = Country.create country_name: 'Spain'
country = Country.create country_name: 'India'
country = Country.create country_name: 'Saudi Arabia'
puts'country'

# CREA LAS CIUDADES

a = Country.find(1)
City.create city_name: 'Shangai', country: a
a = Country.find(2)
City.create city_name: 'Taipei', country: a
a = Country.find(1)
City.create city_name: 'Shenzen', country: a
a = Country.find(1)
City.create city_name: 'Hong Kong', country: a
a = Country.find(1)
City.create city_name: 'Ningbo', country: a
a = Country.find(3)
City.create city_name: 'Busan', country: a
a = Country.find(4)
City.create city_name: 'Dubai', country: a
a = Country.find(5)
City.create city_name: 'Rotherdam', country: a
a = Country.find(7)
City.create city_name: 'Kaohsiung', country: a
a = Country.find(1)
City.create city_name: 'Tianjin', country: a
a = Country.find(8)
City.create city_name: 'Hamburg', country: a
a = Country.find(9)
City.create city_name: 'Antwerp', country: a
a = Country.find(10)
City.create city_name: 'Los Angeles', country: a
a = Country.find(11)
City.create city_name: 'Laem Shabang', country: a
a = Country.find(13)
City.create city_name: 'Ho Shi Min', country: a
a = Country.find(8)
City.create city_name: 'Bremen', country: a
a = Country.find(10)
City.create city_name: 'New York', country: a
a = Country.find(15)
City.create city_name: 'Valencia', country: a
a = Country.find(14)
City.create city_name: 'Colombo', country: a
a = Country.find(15)
City.create city_name: 'Barcelona', country: a

puts'crea Cities'

#   CREA LOS NVOCCS
a = City.find(1)
Nvocc.create nvocc_name: 'Expeditors International Washington', address: 'Dubai Londres Shangai', status_nvocc: true, city: a
a = City.find(3)
Nvocc.create nvocc_name: 'Oriente Rxpress Container', address: 'China', status_nvocc: true, city: a
a = City.find(2)
Nvocc.create nvocc_name: 'Apex Shipping', address: 'no se', status_nvocc: true, city:
a = City.find(17)
Nvocc.create nvocc_name: 'Phoenix Int. Freight', address: 'New York USA', status_nvocc: true, city: a
a = City.find(4)
Nvocc.create nvocc_name: 'Blue Anchor Line', address: 'China', status_nvocc: true, city: a
a = City.find(4)
Nvocc.create nvocc_name: 'Schenkerocean', address: 'China', status_nvocc: true, city: a
a = City.find(4)
Nvocc.create nvocc_name: 'Honour Landshipping', address: 'china', status_nvocc: true, city:
a = City.find(1)
Nvocc.create nvocc_name: 'Hechny Shipping', address: 'China', status_nvocc: true, city: a
a = City.find(4)
Nvocc.create nvocc_name: 'UPS SCS Asia', address: 'Hong Kong', status_nvocc: true, city: a
a = City.find(4)
Nvocc.create nvocc_name: 'Seamaster Logistics', address: 'China', status_nvocc: true, city: a

#   CREA LOS CUSTOMERS

a = City.find(3)
Customer.create customer_name: 'Roberto', city: a
a = City.find(1)
Customer.create customer_name: 'Elisabeth', city: a
a = City.find(3)
Customer.create customer_name: 'Antonio', city: a
a = City.find(17)
Customer.create customer_name: 'Pepe', city: a
a = City.find(4)
Customer.create customer_name: 'Jose', city: a
a = City.find(8)
Customer.create customer_name: 'Lola', city: a
a = City.find(1)
Customer.create customer_name: 'Pedro', city:
a = City.find(18)
Customer.create customer_name: 'Joao', city: a
a = City.find(3)
Customer.create customer_name: 'Woanchi', city: a
a = City.find(5)
Customer.create customer_name: 'Luao Ho', city: a

# Crea NVOCCS_CUSTOMERS

a = Nvocc.find(3)
b = Customer.find(1)
a.nvoccs_customers.create(customer: b)
a = Nvocc.find(2)
b = Customer.find(2)
a.nvoccs_customers.create(customer: b)
a = Nvocc.find(1)
b = Customer.find(2)
a.nvoccs_customers.create(customer: b)
a = Nvocc.find(10)
b = Customer.find(1)
a.nvoccs_customers.create(customer: b)
a = Nvocc.find(9)
b = Customer.find(7)
a.nvoccs_customers.create(customer: b)
a = Nvocc.find(8)
b = Customer.find(10)
a.nvoccs_customers.create(customer: b)
a = Nvocc.find(5)
b = Customer.find(10)
a.nvoccs_customers.create(customer: b)
a = Nvocc.find(10)
b = Customer.find(3)
a.nvoccs_customers.create(customer: b)

a = City.find(3)
ShippingCompany.create shipping_comp_name: 'Maersk', status_company: 'TRUE', city: a
a = City.find(2)
ShippingCompany.create shipping_comp_name: 'Mediterranean Shipping CO.', status_company: 'TRUE', city: a
a = City.find(1)
ShippingCompany.create shipping_comp_name: 'CMA CGM', status_company: 'TRUE', city: a
a = City.find(10)
ShippingCompany.create shipping_comp_name: 'American President', status_company: 'FALSE', city: a
a = City.find(8)
ShippingCompany.create shipping_comp_name: 'Happag LLoyd', status_company: 'TRUE', city: a
a = City.find(13)
ShippingCompany.create shipping_comp_name: 'Evergreen Line', status_company: 'TRUE', city: a
a = City.find(4)
ShippingCompany.create shipping_comp_name: 'Cosco', status_company: 'TRUE', city: a
a = City.find(3)
ShippingCompany.create shipping_comp_name: 'China Shipping CO.', status_company: 'TRUE', city: a
a = City.find(1)
ShippingCompany.create shipping_comp_name: 'Hanjin Shipping', status_company: 'FALSE', city: a
a = City.find(14)
ShippingCompany.create shipping_comp_name: 'Mitzui OSK', status_company: 'TRUE', city: a

a = ShippingCompany.find(3)
Ship.create ship_name: 'MSC Oscar', shipping_company: a
a = ShippingCompany.find(2)
Ship.create ship_name: 'CSCL Globe', shipping_company: a
a = ShippingCompany.find(1)
Ship.create ship_name: 'Maersk Moller', shipping_company: a
a = ShippingCompany.find(3)
Ship.create ship_name: 'CMA Marco Polo', shipping_company: a
a = ShippingCompany.find(2)
Ship.create ship_name: 'Emma Maersk', shipping_company: a
a = ShippingCompany.find(1)
Ship.create ship_name: 'CSCL Star', shipping_company: a
a = ShippingCompany.find(4)
Ship.create ship_name: 'MSC Camille', shipping_company: a
a = ShippingCompany.find(5)
Ship.create ship_name: 'APL Rafles', shipping_company: a
a = ShippingCompany.find(6)
Ship.create ship_name: 'CGM Corte Real', shipping_company: a
a = ShippingCompany.find(7)
Ship.create ship_name: 'Christophe Colombo', shipping_company: a

a = ShippingCompany.find(3)
Container.create container_code: 'abcd1234567', container_type: 'standardhq', city_location: 'Shangai', country_location: 'China', status_container: true, shipping_company: a
a = ShippingCompany.find(2)
Container.create container_code: 'abcd1234566', container_type: 'reeferhq', city_location: 'Taipei', country_location: 'Taiwan', status_container: true, shipping_company: a
a = ShippingCompany.find(1)
Container.create container_code: 'abcd1234565', container_type: 'flatrackhq', city_location: 'Shenzen', country_location: 'China', status_container: true, shipping_company: a
a = ShippingCompany.find(8)
Container.create container_code: 'abcd1234564', container_type: 'standardhq', city_location: 'Shangai', country_location: 'China', status_container: false, shipping_company: a
a = ShippingCompany.find(6)
Container.create container_code: 'abcd1234563', container_type: 'reeferhq', city_location: 'Taipei', country_location: 'Taiwan', status_container: true, shipping_company: a
a = ShippingCompany.find(5)
Container.create container_code: 'abcd1234562', container_type: 'flatrackhq', city_location: 'Shenzen', country_location: 'China', status_container: true, shipping_company: a
a = ShippingCompany.find(8)
Container.create container_code: 'abcd1234561', container_type: 'standardhq', city_location: 'Shangai', country_location: 'China', status_container: true, shipping_company: a
a = ShippingCompany.find(1)
Container.create container_code: 'abcd1234560', container_type: 'reeferhq', city_location: 'Taipei', country_location: 'Taiwan', status_container: false, shipping_company: a
a = ShippingCompany.find(1)
Container.create container_code: 'abcd1234595', container_type: 'flatrackhq', city_location: 'Shenzen', country_location: 'China', status_container: true, shipping_company: a
a = ShippingCompany.find(10)
Container.create container_code: 'abcd1234587', container_type: 'standardhq', city_location: 'Shangai', country_location: 'China', status_container: true, shipping_company: a
a = ShippingCompany.find(9)
Container.create container_code: 'abcd1234576', container_type: 'reeferhq', city_location: 'Taipei', country_location: 'Taiwan', status_container: true, shipping_company: a
a = ShippingCompany.find(7)
Container.create container_code: 'abcd1234665', container_type: 'flatrackhq', city_location: 'Shenzen', country_location: 'China', status_container: true, shipping_company: a
a = ShippingCompany.find(6)
Container.create container_code: 'abcd1234554', container_type: 'standardhq', city_location: 'Shangai', country_location: 'China', status_container: true, shipping_company: a
a = ShippingCompany.find(5)
Container.create container_code: 'abcd1234563', container_type: 'reeferhq', city_location: 'Taipei', country_location: 'Taiwan', status_container: true, shipping_company: a
a = ShippingCompany.find(4)
Container.create container_code: 'abcd1234462', container_type: 'flatrackhq', city_location: 'Shenzen', country_location: 'China', status_container: false, shipping_company: a
a = ShippingCompany.find(3)
Container.create container_code: 'abcd1234561', container_type: 'standardhq', city_location: 'Shangai', country_location: 'China', status_container: true, shipping_company: a
a = ShippingCompany.find(2)
Container.create container_code: 'abcd1234532', container_type: 'reeferhq', city_location: 'Taipei', country_location: 'Taiwan', status_container: true, shipping_company: a
a = ShippingCompany.find(1)
Container.create container_code: 'abcd1231095', container_type: 'flatrackhq', city_location: 'Shenzen', country_location: 'China', status_container: true, shipping_company: a

# NVOCCS_SHIPPING COMPANIES

a = ShippingCompany.find(1)
b = Nvocc.find(1)
NvoccsShippingCompany.create shipping_company: a, nvocc: b
a = ShippingCompany.find(2)
b = Nvocc.find(3)
NvoccsShippingCompany.create shipping_company: a, nvocc: b
a = ShippingCompany.find(3)
b = Nvocc.find(5)
NvoccsShippingCompany.create shipping_company: a, nvocc: b
a = ShippingCompany.find(1)
b = Nvocc.find(7)
NvoccsShippingCompany.create shipping_company: a, nvocc: b
a = ShippingCompany.find(2)
b = Nvocc.find(7)
NvoccsShippingCompany.create shipping_company: a, nvocc: b
a = ShippingCompany.find(3)
b = Nvocc.find(6)
NvoccsShippingCompany.create shipping_company: a, nvocc: b
a = ShippingCompany.find(4)
b = Nvocc.find(3)
NvoccsShippingCompany.create shipping_company: a, nvocc: b
a = ShippingCompany.find(5)
b = Nvocc.find(1)
NvoccsShippingCompany.create shipping_company: a, nvocc: b
a = ShippingCompany.find(6)
b = Nvocc.find(1)
NvoccsShippingCompany.create shipping_company: a, nvocc: b
a = ShippingCompany.find(1)
b = Nvocc.find(5)
NvoccsShippingCompany.create shipping_company: a, nvocc: b
a = ShippingCompany.find(2)
b = Nvocc.find(4)
NvoccsShippingCompany.create shipping_company: a, nvocc: b
a = ShippingCompany.find(7)
b = Nvocc.find(9)
NvoccsShippingCompany.create shipping_company: a, nvocc: b

# Creando el BLMASTERS

a = NvoccsShippingCompany.find(1)
b = Ship.find(3)
Blmaster.create goods_origin: 'Shangai', goods_destiny: 'shenzen', docking_date: '2017/04/25', departure: '2017/05/03', nvoccs_shipping_company: a, ship: b
a = NvoccsShippingCompany.find(2)
b = Ship.find(5)
Blmaster.create goods_origin: 'Taipei', goods_destiny: 'New York', docking_date: '2017/04/25', departure: '2017/05/03', nvoccs_shipping_company: a, ship: b
a = NvoccsShippingCompany.find(3)
b = Ship.find(4)
Blmaster.create goods_origin: 'Shenzen', goods_destiny: 'New York', docking_date: '2017/04/25', departure: '2017/05/03', nvoccs_shipping_company: a, ship: b
a = NvoccsShippingCompany.find(4)
b = Ship.find(7)
Blmaster.create goods_origin: 'New York', goods_destiny: 'Hamburg', docking_date: '2017/04/25', departure: '2017/05/03', nvoccs_shipping_company: a, ship: b
a = NvoccsShippingCompany.find(1)
b = Ship.find(6)
Blmaster.create goods_origin: 'Valencia', goods_destiny: 'shenzen', docking_date: '2017/04/25', departure: '2017/05/03', nvoccs_shipping_company: a, ship: b
a = NvoccsShippingCompany.find(2)
b = Ship.find(2)
Blmaster.create goods_origin: 'Hamburg', goods_destiny: 'New York', docking_date: '2017/04/26', departure: '2017/05/03', nvoccs_shipping_company: a, ship: b
a = NvoccsShippingCompany.find(3)
b = Ship.find(1)
Blmaster.create goods_origin: 'Shenzen', goods_destiny: 'Hamburg', docking_date: '2017/04/23', departure: '2017/05/03', nvoccs_shipping_company: a, ship: b
a = NvoccsShippingCompany.find(5)
b = Ship.find(8)
Blmaster.create goods_origin: 'Taiwan', goods_destiny: 'New York', docking_date: '2017/04/23', departure: '2017/05/03', nvoccs_shipping_company: a, ship: b
a = NvoccsShippingCompany.find(6)
b = Ship.find(9)
Blmaster.create goods_origin: 'Valencia', goods_destiny: 'Taipei', docking_date: '2017/04/24', departure: '2017/05/03', nvoccs_shipping_company: a, ship: b
a = NvoccsShippingCompany.find(7)
b = Ship.find(10)
Blmaster.create goods_origin: 'Hambur', goods_destiny: 'Shangai', docking_date: '2017/04/25', departure: '2017/05/03', nvoccs_shipping_company: a, ship: b

# cargando BLHOUSES
a = NvoccsCustomer.find(1)
b = Blmaster.find(1)
a.blhouses.create(blmaster: b)
a = NvoccsCustomer.find(1)
b = Blmaster.find(1)
a.blhouses.create(blmaster: b)
a = NvoccsCustomer.find(1)
b = Blmaster.find(1)
a.blhouses.create(blmaster: b)
a = NvoccsCustomer.find(2)
b = Blmaster.find(1)
a.blhouses.create(blmaster: b)
a = NvoccsCustomer.find(3)
b = Blmaster.find(1)
a.blhouses.create(blmaster: b)
a = NvoccsCustomer.find(4)
b = Blmaster.find(1)
a.blhouses.create(blmaster: b)
a = NvoccsCustomer.find(2)
b = Blmaster.find(3)
a.blhouses.create(blmaster: b)
a = NvoccsCustomer.find(3)
b = Blmaster.find(4)
a.blhouses.create(blmaster: b)
a = NvoccsCustomer.find(4)
b = Blmaster.find(4)
a.blhouses.create(blmaster: b)
a = NvoccsCustomer.find(6)
b = Blmaster.find(2)
a.blhouses.create(blmaster: b)
a = NvoccsCustomer.find(7)
b = Blmaster.find(5)
a.blhouses.create(blmaster: b)
a = NvoccsCustomer.find(7)
b = Blmaster.find(6)
a.blhouses.create(blmaster: b)
a = NvoccsCustomer.find(8)
b = Blmaster.find(6)
a.blhouses.create(blmaster: b)
a = NvoccsCustomer.find(8)
b = Blmaster.find(7)
a.blhouses.create(blmaster: b)
a = NvoccsCustomer.find(6)
b = Blmaster.find(8)
a.blhouses.create(blmaster: b)
a = NvoccsCustomer.find(8)
b = Blmaster.find(9)
a.blhouses.create(blmaster: b)
a = NvoccsCustomer.find(7)
b = Blmaster.find(10)
a.blhouses.create(blmaster: b)
