class Order < ApplicationRecord
  enum :status, { pending: 0, confirmed: 1, shipped: 2, delivered: 3 } do
    event :confirm do
      transition pending: :confirmed
    end

    event :ship do
      transition confirmed: :shipped
    end

    event :deliver do
      transition shipped: :delivered
    end
  end
end
