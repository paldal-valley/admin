# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_05_121521) do

  create_table "admin_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "comments", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=ucs2", force: :cascade do |t|
    t.text "content", null: false
    t.integer "refId", default: 0, null: false
    t.integer "refType", default: 0, null: false
    t.integer "userId", default: 0, null: false
    t.integer "isDeleted", limit: 1, default: 0, null: false
    t.integer "isPending", limit: 1, default: 0, null: false
    t.timestamp "createdDate", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.timestamp "lastModifiedDate", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["userId"], name: "fk_comments_1_idx"
  end

  create_table "graduates", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=ucs2", force: :cascade do |t|
    t.integer "userId"
    t.string "companyTitle"
    t.string "companyTeam"
    t.string "companyPosition"
    t.string "companyEmail"
    t.timestamp "graduatedDate"
    t.index ["userId"], name: "graduates_ibfk_1_idx"
  end

  create_table "posts", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=ucs2", force: :cascade do |t|
    t.integer "userId", default: 0, null: false
    t.string "title"
    t.text "content"
    t.integer "view"
    t.integer "recommended"
    t.integer "isPending", limit: 1, default: 0
    t.integer "isDeleted", limit: 1, default: 0
    t.timestamp "createdDate", default: -> { "CURRENT_TIMESTAMP" }
    t.timestamp "lastModifiedDate", default: -> { "CURRENT_TIMESTAMP" }
    t.index ["userId"], name: "posts_ibfk_1_idx"
  end

  create_table "posts_answers", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=ucs2", force: :cascade do |t|
    t.integer "postId_Q"
    t.integer "postId"
    t.integer "isSelected", limit: 1
    t.index ["postId"], name: "posts_answers_ibfk_2_idx"
    t.index ["postId_Q"], name: "posts_answers_ibfk1_idx"
  end

  create_table "posts_plazas", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=ucs2", force: :cascade do |t|
    t.integer "postId"
    t.integer "categoryId"
    t.index ["postId"], name: "posts_frees_ibfk_1_idx"
  end

  create_table "posts_questions", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=ucs2", force: :cascade do |t|
    t.integer "postId"
    t.integer "categoryId", default: 0
    t.integer "reward"
    t.string "posts_questionscol", limit: 45, default: "0"
    t.index ["postId"], name: "posts_questions_ibfk_1_idx"
  end

  create_table "posts_reviews", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=ucs2", force: :cascade do |t|
    t.integer "postId"
    t.integer "categoryId"
    t.index ["postId"], name: "posts_reviews_ibfk_1_idx"
  end

  create_table "static_majors", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=ucs2", force: :cascade do |t|
    t.string "title"
  end

  create_table "static_posts_plazas_types", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=ucs2", force: :cascade do |t|
    t.string "title", limit: 45
  end

  create_table "static_posts_questions_types", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=ucs2", force: :cascade do |t|
    t.string "title", limit: 45
  end

  create_table "static_posts_reviews_types", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=ucs2", force: :cascade do |t|
    t.string "title", limit: 45
  end

  create_table "static_ref_types", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=ucs2", force: :cascade do |t|
    t.string "title"
  end

  create_table "tests", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=ucs2", force: :cascade do |t|
    t.string "title", limit: 45
  end

  create_table "users", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=ucs2", force: :cascade do |t|
    t.string "password"
    t.string "name", limit: 45, default: ""
    t.string "walletAddress"
    t.integer "type", limit: 1
    t.integer "majorId"
    t.integer "isAuthorized", limit: 1
    t.string "email", limit: 45
    t.timestamp "createdDate", default: -> { "CURRENT_TIMESTAMP" }
    t.timestamp "lastModifiedDate", default: -> { "CURRENT_TIMESTAMP" }
    t.string "resetPasswordToken", limit: 45
    t.timestamp "resetPasswordExpires"
    t.index ["email"], name: "email_UNIQUE", unique: true
    t.index ["majorId"], name: "majorId"
  end

  add_foreign_key "comments", "users", column: "userId", name: "fk_comments_1"
  add_foreign_key "graduates", "users", column: "userId", name: "graduates_ibfk_1"
  add_foreign_key "posts", "users", column: "userId", name: "posts_ibfk_1"
  add_foreign_key "posts_answers", "posts", column: "postId", name: "posts_answers_ibfk_2"
  add_foreign_key "posts_answers", "posts_questions", column: "postId_Q", name: "posts_answers_ibfk_1"
  add_foreign_key "posts_plazas", "posts", column: "postId", name: "posts_plazas_ibfk_1"
  add_foreign_key "posts_questions", "posts", column: "postId", name: "posts_questions_ibfk_1"
  add_foreign_key "posts_reviews", "posts", column: "postId", name: "posts_reviews_ibfk_1"
  add_foreign_key "users", "static_majors", column: "majorId", name: "users_ibfk_1"
end
