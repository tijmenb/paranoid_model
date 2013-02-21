require "paranoid_model/version"

module ParanoidModel
  def self.included(base)
    base.extend ClassMethods
  end

  class ParanoidModelException < StandardError; end

  def update_attribute(*)
    raise ParanoidModelException, ":update_attribute is verboten for this model."
  end

  def destroy(*)
    raise ParanoidModelException, ":destroy is verboten for this model."
  end

  def delete(*)
    raise ParanoidModelException, ":delete is verboten for this model."
  end

  module ClassMethods
    def update_all(*)
      raise ParanoidModelException, ":update_all is verboten for this model."
    end

    def destroy_all(*)
      raise ParanoidModelException, ":destroy_all is verboten for this model."
    end

    def delete_all(*)
      raise ParanoidModelException, ":delete_all is verboten for this model."
    end
  end
end
