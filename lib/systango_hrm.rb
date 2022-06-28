require_relative './systango_hrm/user_patch'
require_relative './systango_hrm/welcome_helper_patch'

module SystangoHrm
  def self.apply_patch
    User.send(:include, UserPatch)
    WelcomeController.send(:include, WelcomeHelperPatch)
    WelcomeHelper.send(:include, WelcomeHelperPatch)
    CustomField.send(:include, CustomFieldPatch)
    CustomValue.send(:include, CustomValuePatch)
  end
end
