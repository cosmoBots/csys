require_dependency 'project'

# Patches Redmine's Project dynamically.
module ProjectPatch
  def self.included(base) # :nodoc:
    base.extend(ClassMethods)

    base.send(:include, InstanceMethods)

    # Same as typing in the class 
    base.class_eval do
      unloadable # Send unloadable so it will not be unloaded in development

      after_save :csys_save_post_process
      before_save :csys_save_pre_process
      
    end

  end
  
  module ClassMethods
  end
  
  module InstanceMethods
 
    def csys_save_pre_process

    end

    def csys_save_post_process

    end
  end    
end
# Add module to Project
Project.send(:include, ProjectPatch)