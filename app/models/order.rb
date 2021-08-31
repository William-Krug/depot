class Order < ApplicationRecord
  enum pay_type: {
    "Check"          => 0,
    "Credit Card"    => 1,
    "purchase Order" => 2
  }
end