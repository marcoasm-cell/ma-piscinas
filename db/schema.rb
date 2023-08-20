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

ActiveRecord::Schema.define(version: 2023_08_17_192808) do

  create_table "absences", charset: "utf8mb4", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.text "notes"
    t.text "responsibles"
    t.boolean "internal_responsibility"
    t.text "return_responsibles"
    t.boolean "return_internal_responsibility"
    t.bigint "patient_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_absences_on_patient_id"
  end

  create_table "default_process_entries", charset: "utf8mb4", force: :cascade do |t|
    t.integer "breakfast1"
    t.integer "breakfast2"
    t.integer "lunch"
    t.integer "afternoon_snack"
    t.integer "dinner"
    t.integer "supper"
    t.integer "hygiene_oral"
    t.integer "wash_hands"
    t.integer "wc_acomp"
    t.integer "diaper_change"
    t.integer "skin_hidratation"
    t.integer "shower"
    t.integer "hygiene_finger_nail"
    t.integer "dress"
    t.integer "hair_brushing"
    t.integer "hair_dresser"
    t.integer "estetic_or_barber"
    t.integer "cloth_wash"
    t.integer "cloth_dry"
    t.integer "cloth_iron"
    t.integer "cloth_distribution"
    t.integer "terap_fast"
    t.integer "terap_breakfast"
    t.integer "terap_lunch"
    t.integer "terap_afternoon_snack"
    t.integer "terap_dinner"
    t.integer "terap_bed"
    t.integer "e_social"
    t.integer "sociology"
    t.integer "asc"
    t.integer "facility_exists"
    t.integer "vital_avaliations"
    t.integer "recreational_activities"
    t.integer "spiritual_activities"
    t.integer "inteligence_activities"
    t.integer "cultural_activities"
    t.integer "sport_activities"
    t.integer "everyday_activities"
    t.integer "social_activities"
    t.integer "other"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "patient_id"
    t.index ["patient_id"], name: "index_default_process_entries_on_patient_id"
  end

  create_table "indicators", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "patient_id"
    t.date "date"
    t.string "indicator"
    t.integer "exp_value"
    t.integer "total_value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_indicators_on_patient_id"
  end

  create_table "patient_notes", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "patient_id"
    t.date "date"
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_patient_notes_on_patient_id"
  end

  create_table "patients", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.date "date_of_birth", null: false
    t.boolean "active", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "process_entries", charset: "utf8mb4", force: :cascade do |t|
    t.date "date"
    t.integer "breakfast1"
    t.integer "breakfast2"
    t.integer "lunch"
    t.integer "afternoon_snack"
    t.integer "dinner"
    t.integer "supper"
    t.integer "hygiene_oral"
    t.integer "wash_hands"
    t.integer "wc_acomp"
    t.integer "diaper_change"
    t.integer "skin_hidratation"
    t.integer "shower"
    t.integer "hygiene_finger_nail"
    t.integer "dress"
    t.integer "hair_brushing"
    t.integer "hair_dresser"
    t.integer "estetic_or_barber"
    t.integer "cloth_wash"
    t.integer "cloth_dry"
    t.integer "cloth_iron"
    t.integer "cloth_distribution"
    t.integer "terap_fast"
    t.integer "terap_breakfast"
    t.integer "terap_lunch"
    t.integer "terap_afternoon_snack"
    t.integer "terap_dinner"
    t.integer "terap_bed"
    t.integer "e_social"
    t.integer "sociology"
    t.integer "asc"
    t.integer "facility_exists"
    t.integer "vital_avaliations"
    t.integer "recreational_activities"
    t.integer "spiritual_activities"
    t.integer "inteligence_activities"
    t.integer "cultural_activities"
    t.integer "sport_activities"
    t.integer "everyday_activities"
    t.integer "social_activities"
    t.integer "other"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "patient_id"
    t.index ["patient_id"], name: "index_process_entries_on_patient_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "username", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.boolean "active", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
