module UsersHelper

  def has_pet?
    !@user.pets.empty?
  end
end
