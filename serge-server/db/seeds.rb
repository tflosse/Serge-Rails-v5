# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
    {
        username: "Tam Flaus",
        email: "tam@fakemail.com",
        password: "tamsfakepwd"
    }, {
        username: "Leila Schiller",
        email: "lschiller@fakemail.com",
        password: "leilasfakepwd"
    }, {
        username: "Alex Sierra",
        email: "alexs@fakemail.com",
        password: "alexsfakepwd"
    }, {
        username: "Joyce Frost",
        email: "joyce@fakemail.com",
        password: "joycesfakepwd"
    }
]);

Trip.create([
    {
        name: "Alex's Bachelorette Biarritz",
        start_date: "2020-08-26",
        user_id: 1
    }, {
        name: "Big Sur Camping",
        start_date: "2020-09-17",
        user_id: 2
    }, {
        name: "Trip Home",
        start_date: "2020-10-03",
        user_id: 1
    }
]);

Reservation.create([
    {
        trip_id: 1,
        reservation_type: "flight",
        date_and_time: "2020-08-26 15:20",
        location: "Tom Bradley International Airport",
        nickname: "Flight to Paris",
        details: "Delta DL8553 confirmation: GILBH6",
        cost: 1450.95,
        is_paid: true
    }, {
        trip_id: 1,
        reservation_type: "stay",
        date_and_time: "2020-08-27 15:00",
        location: "Hotel Windsor Biarritz",
        nickname: "Biarritz Hotel",
        details: "confirmation: HWB567483, 3-night stay, 2 queens",
        cost: 1200,
        is_paid: false
    }, {
        trip_id: 1,
        reservation_type: "stay",
        date_and_time: "2020-08-30 15:00",
        location: "Reyes Catolicos Kalea, 12, 20006 Donostia, Gipuzkoa, Spain",
        nickname: "San Sebastian AirBnb",
        details: "confirmation: 43125563, 2-night stay, 3-bedroom apartment",
        cost: 840.45,
        is_paid: false
    }, {
        trip_id: 1,
        reservation_type: "activity",
        date_and_time: "2020-08-29 19:30",
        location: "L'Art Dit Vin, 15 Avenue de Verdun, 64200 Biarritz, France",
        nickname: "Bachelorette Venue",
        details: "395 Euro charge includes wine tasting and private room for group of 8, additional charges for food.",
        cost: 395,
        is_paid: false
    }, {
        trip_id: 1,
        reservation_type: "activity",
        date_and_time: "2020-09-01 10:00",
        location: "Ostarte Sailing, Kaiko Pasealekua, 20003 Donostia-San Sebastian, SS, Spain",
        nickname: "Sailing Boat",
        details: "Plan for 3hrs, 120 Euro deposit paid",
        cost: 490,
        is_paid: false
    }, {
        trip_id: 1,
        reservation_type: "car rental",
        date_and_time: "2020-08-27 14:00",
        location: "CDG Terminal 2F",
        nickname: "Hertz Rental Car",
        details: "Drop-off at Bordeaux Airport",
        cost: 240.50,
        is_paid: true
    }, {
        trip_id: 1,
        reservation_type: "flight",
        date_and_time: "2020-09-16 10:10",
        location: "Paris CDG Terminal 2E",
        nickname: "Flight to Los Angeles",
        details: "Delta DL7552 confirmation: GILBH6",
        cost: 0,
        is_paid: true
    }, {
        trip_id: 2,
        reservation_type: "other",
        date_and_time: "2020-09-17 12:00",
        location: "Enterprise Rental Lincoln Ave",
        nickname: "Car Rental",
        details: "Small SUV, 5 days, eligible for free upgrade",
        cost: 243.50,
        is_paid: false
    }, {
        trip_id: 2,
        reservation_type: "stay",
        date_and_time: "2020-09-17 15:00",
        location: "Pfeiffer Campgrounds, Big Sur",
        nickname: "Big Sur Camping",
        details: "First-come first-serve basis, back-in camping spot",
        cost: 90,
        is_paid: true
    }, {
        trip_id: 3,
        reservation_type: "flight",
        date_and_time: "2020-10-03 13:20",
        location: "Tom Bradley International Airport",
        nickname: "Flight to Tahiti",
        details: "Air Tahiti Nui TN07 confirmation: XPF564883GH",
        cost: 987.82,
        is_paid: false
    }, {
        trip_id: 3,
        reservation_type: "flight",
        date_and_time: "2020-10-17 23:45",
        location: "Aeroport de Tahiti Faa'a",
        nickname: "Flight to Los Angeles",
        details: "Air Tahiti Nui TN02 confirmation: XPF564883GH",
        cost: 0,
        is_paid: false
    },  {
        trip_id: 3,
        reservation_type: "other",
        date_and_time: "2020-10-04 06:45",
        location: "Port Maritime",
        nickname: "Aremiti Ferry to Moorea",
        details: "Reservation made for 2 adults + car",
        cost: 75,
        is_paid: false
    },  {
        trip_id: 3,
        reservation_type: "stay",
        date_and_time: "2020-10-04 14:00",
        location: "Hirinaki Lodge, Temae",
        nickname: "4-night stay in Temae",
        details: "Reserved 2-guest bungalow",
        cost: 4000,
        is_paid: false
    },
]);

puts "Seeded data";
