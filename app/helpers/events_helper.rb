module EventsHelper
  def formated_price(event)
    if event.free?
      content_tag(:strong, "Free!")
    else
      number_to_currency(event.price, format: "%n %u", delimiter: " ", unit: "LT", precision: 0)
    end
  end
end
