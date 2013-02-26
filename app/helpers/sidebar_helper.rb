module SidebarHelper
  
  def active_li?(options = {})
    result = false
    return '' if options[:controllers].blank?
    options[:value] ||= ''
    unless options[:actions].blank?
      result = true if options[:controllers].include?(controller_name) and options[:actions].include?(action_name)
    else
      result = true if options[:controllers].include?(controller_name)
    end
    result = "#{options[:value]}" if result.present?
  end
  
end