module Refinery
  module Memberships
    module Admin
      module MembersHelper

        def accept(member)
          link_to refinery_icon_tag('thumb_up.png') + t('accept', :scope => 'refinery.admin.members'),
    				refinery.accept_admin_member_path(member),
    				#:title => t('accept', :scope => 'refinery.admin.members'),
    				:class => 'action'
        end

        def reject(member)
          link_to refinery_icon_tag('thumb_down.png') + t('reject', :scope => 'refinery.admin.members'),
    				refinery.reject_admin_member_path(member),
    				#:title => t('reject', :scope => 'refinery.admin.members'),
    				:class => 'action'
        end


        def enable(member)
          link_to refinery_icon_tag('unlock.png') + t('enable', :scope => 'refinery.admin.members'),
    				refinery.enable_admin_member_path(member),
    				#:title => t('enable', :scope => 'refinery.admin.members'),
    				:class => 'action'
        end

        def disable(member)
          link_to refinery_icon_tag('lock.png') + t('disable', :scope => 'refinery.admin.members'),
    				refinery.disable_admin_member_path(member),
    				#:title => t('disable', :scope => 'refinery.admin.members'),
    				:class => 'action'
        end

        def extend(member)
          link_to refinery_icon_tag('date_add.png') + t('extend', :scope => 'refinery.admin.members'),
    				refinery.extend_admin_member_path(member),
    				#:title => t('extend', :scope => 'refinery.admin.members'),
    				:class => 'action'
        end

        def edit(member)
          link_to refinery_icon_tag('application_edit.png') + t('edit', :scope => 'refinery.admin.members'),
    				refinery.edit_admin_member_path(member)#,
    				#:title => t('edit', :scope => 'refinery.admin.members')
        end

        def delete(member)
          link_to refinery_icon_tag('delete.png') + t('delete', :scope => 'refinery.admin.members'),
    				refinery.admin_member_path(member),
            :class => "confirm-delete",
            :confirm => t('message', :scope => 'refinery.admin.delete', :title => member.full_name),
            :method => :delete
        end
      end
    end
  end
end
