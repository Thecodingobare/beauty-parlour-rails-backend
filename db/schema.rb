# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_10_12_153039) do

  create_table "bookings", force: :cascade do |t|
    t.integer "service_id", null: false
    t.integer "ServiceProvider_id", null: false
    t.string "client"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date_book"
    t.index ["ServiceProvider_id"], name: "index_bookings_on_ServiceProvider_id"
    t.index ["service_id"], name: "index_bookings_on_service_id"
  end

  add_foreign_key "bookings", "ServiceProviders"
  add_foreign_key "bookings", "services"
end
