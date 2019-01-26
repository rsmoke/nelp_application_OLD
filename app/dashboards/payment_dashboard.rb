require "administrate/base_dashboard"

class PaymentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    transactionType: Field::String,
    transactionStatus: Field::String,
    transactionId: Field::String,
    transactionTotalAmount: Field::String,
    transactionDate: Field::String,
    transactionAcountType: Field::String,
    transactionResultCode: Field::String,
    transactionResultMessage: Field::String,
    orderNumber: Field::String,
    payerFullName: Field::String,
    timestamp: Field::String,
    transactionHash: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :id,
    # :transactionType,
    :transactionTotalAmount,
    :transactionStatus,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :transactionType,
    :transactionStatus,
    :transactionId,
    :transactionTotalAmount,
    :transactionDate,
    :transactionAcountType,
    :transactionResultCode,
    :transactionResultMessage,
    :orderNumber,
    :payerFullName,
    :timestamp,
    :transactionHash,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :transactionType,
    :transactionStatus,
    :transactionId,
    :transactionTotalAmount,
    :transactionDate,
    :transactionAcountType,
    :transactionResultCode,
    :transactionResultMessage,
    :orderNumber,
    :payerFullName,
    :timestamp,
    :transactionHash,
  ].freeze

  # Overwrite this method to customize how payments are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(payment)
  #   "Payment ##{payment.id}"
  # end
end
