class CityPolicy < ApplicationPolicy
  def index?
    true
  end
 
  def create?
    user.present?
  end
 
  def update?
    return true if user.present? && user == city.user || user.role == "admin"
  end
 
  def destroy?
    return true if user.present? && user == city.user || user.role == "admin"
  end
 
  private
 
    def city
      record
    end
end