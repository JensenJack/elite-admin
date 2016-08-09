<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="{{ access()->user()->picture }}" class="img-circle" alt="User Image" />
            </div><!--pull-left-->
            <div class="pull-left info">
                <p>{{ access()->user()->name }}</p>
                <!-- Status -->
                <a href="#"><i class="fa fa-circle text-success"></i> {{ trans('strings.backend.general.status.online') }}</a>
            </div><!--pull-left-->
        </div><!--user-panel-->

        <!-- search form (Optional) -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                  <input type="text" name="q" class="form-control" placeholder="{{ trans('strings.backend.general.search_placeholder') }}" />
                  <span class="input-group-btn">
                    <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                  </span>
            </div><!--input-group-->
        </form>
        <!-- /.search form -->

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">
		
            <!-- Optionally, you can add icons to the links -->
            <li class="{{ Active::pattern('admin/dashboard') }}">
                {{ link_to_route('admin.dashboard', trans('menus.backend.sidebar.dashboard')) }}
            </li>

            @permission('manage-users')
			
				<li class="{{ Active::pattern('admin/access/*') }}">
					{{ link_to_route('admin.access.user.index', trans('menus.backend.access.title')) }}
				</li>	

				<li class="header">{{ trans('menus.backend.sidebar.analytics') }}</li>				
				
				<li class="header">{{ trans('menus.backend.sidebar.content') }}</li>

				<li class="{{ Active::pattern('admin/cms*') }} treeview">
					<a href="#">
						<span>{{ trans('menus.backend.cms.main') }}</span>
						<i class="fa fa-angle-left pull-right"></i>
					</a>
					<ul class="treeview-menu {{ Active::pattern('admin/cms*', 'menu-open') }}" style="display: none; {{ Active::pattern('admin/cms*', 'display: block;') }}">
						<li class="{{ Active::pattern('admin/page') }}">
							{{ link_to('admin/page', trans('menus.backend.cms.page')) }}
						</li>
						<li class="{{ Active::pattern('admin/menu') }}">
							{{ link_to('admin/menu', trans('menus.backend.cms.menu')) }}
						</li>
						<li class="{{ Active::pattern('admin/tags') }}">
							{{ link_to('admin/tags', trans('menus.backend.cms.tags')) }}
						</li>
						<li class="{{ Active::pattern('admin/categories') }}">
							{{ link_to('admin/categories', trans('menus.backend.cms.categories')) }}
						</li>
						<li class="{{ Active::pattern('admin/templates') }}">
							{{ link_to('admin/templates', trans('menus.backend.cms.templates')) }}
						</li>
						<li class="{{ Active::pattern('admin/widgets') }}">
							{{ link_to('admin/widgets', trans('menus.backend.cms.widgets')) }}
						</li>
					</ul>
				</li>	
				
				<li class="{{ Active::pattern('admin/gallery/*') }}">
					{{ link_to('admin/gallery', trans('menus.backend.gallery.title')) }}
				</li>
				<li class="{{ Active::pattern('admin/files/*') }}">
					{{ link_to('admin/files', trans('menus.backend.files.title')) }}
				</li>				
				<li class="{{ Active::pattern('admin/calendar/*') }}">
					{{ link_to('admin/calendar', trans('menus.backend.calendar.title')) }}
				</li>
				<li class="{{ Active::pattern('admin/events/*') }}">
					{{ link_to('admin/events', trans('menus.backend.events.title')) }}
				</li>
				<li class="{{ Active::pattern('admin/geo/*') }}">
					{{ link_to('admin/geo', trans('menus.backend.geo.title')) }}
				</li>
				
				<li class="header">{{ trans('menus.backend.sidebar.configuration') }}</li>
				
				<li class="{{ Active::pattern('admin/language*') }} treeview">
					<a href="#">
						<span>{{ trans('menus.backend.language.main') }}</span>
						<i class="fa fa-angle-left pull-right"></i>
					</a>
					<ul class="treeview-menu {{ Active::pattern('admin/language*', 'menu-open') }}" style="display: none; {{ Active::pattern('admin/language*', 'display: block;') }}">
						<li class="{{ Active::pattern('admin/page') }}">
							{{ link_to('admin/language', trans('menus.backend.language.title')) }}
						</li>
						<li class="{{ Active::pattern('admin/menu') }}">
							{{ link_to('admin/language/texts', trans('menus.backend.language.texts')) }}
						</li>						
					</ul>
				</li>				
				<li class="{{ Active::pattern('admin/backup/*') }}">
					{{ link_to('admin/backup', trans('menus.backend.backup.title')) }}
				</li>
				
				<li class="{{ Active::pattern('admin/log-viewer*') }} treeview">
					<a href="#">
						<span>{{ trans('menus.backend.log-viewer.main') }}</span>
						<i class="fa fa-angle-left pull-right"></i>
					</a>
					<ul class="treeview-menu {{ Active::pattern('admin/log-viewer*', 'menu-open') }}" style="display: none; {{ Active::pattern('admin/log-viewer*', 'display: block;') }}">
						<li class="{{ Active::pattern('admin/log-viewer') }}">
							{{ link_to('admin/log-viewer', trans('menus.backend.log-viewer.dashboard')) }}
						</li>
						<li class="{{ Active::pattern('admin/log-viewer/logs') }}">
							{{ link_to('admin/log-viewer/logs', trans('menus.backend.log-viewer.logs')) }}
						</li>
					</ul>
				</li>				
			 @endauth
        </ul><!-- /.sidebar-menu -->
    </section><!-- /.sidebar -->
</aside>