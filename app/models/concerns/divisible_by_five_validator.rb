# frozen_string_literal: true

# IsPositiveIntegerDivisibleByFive custom validator
class DivisibleByFive < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if (value % 5).zero?

    record.errors.add attribute, (options[:message] || 'has to be divisible by 5')
  end
end
