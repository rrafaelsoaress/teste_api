class PayloadCreate
  def create_valid_user
    {
      name: Faker::Name.name,
      email: Faker::Internet.email,
      gender: Faker::Gender.binary_type,
      status: 'Active'
    }
  end

  def create_invalid_user
    {
      name: 213,
      email: 342,
      gender: Faker::Gender.binary_type,
      status: 'Active'
    }
  end

  def update_user_name
    {
      name: Faker::Name.name
    }
  end

  def update_user_email
    {
      email: Faker::Internet.email
    }
  end

  def update_user_gender
    {
      gender: Faker::Gender.binary_type
    }
  end

  def update_user_status
    {
      status: 'Inactive'
    }
  end
end
