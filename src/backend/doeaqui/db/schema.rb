ActiveRecord::Schema.define(version: 20170428210502) do

  create_table "charities", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "phone"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "location_id"
    t.index ["location_id"], name: "index_charities_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "state"
    t.string   "city"
    t.text     "street"
    t.string   "number"
    t.string   "complement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
