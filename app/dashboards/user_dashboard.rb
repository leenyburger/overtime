require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
 ATTRIBUTE_TYPES = {
    posts: Field::HasMany.with_options(searchable: false),
    email: Field::String.with_options(searchable: true),
    password: Field::String.with_options(searchable: false),
    sign_in_count: Field::Number.with_options(searchable: false),
    current_sign_in_at: Field::DateTime.with_options(searchable: false),
    last_sign_in_at: Field::DateTime.with_options(searchable: false),
    current_sign_in_ip: Field::String.with_options(searchable: false),
    last_sign_in_ip: Field::String.with_options(searchable: false),
    first_name: Field::String.with_options(searchable: false),
    last_name: Field::String.with_options(searchable: false),
    type: Field::String.with_options(searchable: false),
    created_at: Field::DateTime.with_options(searchable: false),
    updated_at: Field::DateTime.with_options(searchable: false),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :posts,
    :email,
    :type,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :posts,
    :email,
    :sign_in_count,
    :current_sign_in_at,
    :last_sign_in_at,
    :current_sign_in_ip,
    :last_sign_in_ip,
    :first_name,
    :last_name,
    :type,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :email,
    :password,
    :first_name,
    :last_name,
  ].freeze
end
