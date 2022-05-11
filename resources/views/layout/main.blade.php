<!DOCTYPE html>
<html lang="en">
    @section( "cssExtra" )

        <link href="{{ asset( 'css/dashboard.css' ) }}" rel="preload" as="style">
        <link href="{{ asset( 'css/dashboard.css' ) }}" rel="stylesheet">
    @endsection

    @include( "layout.helper.head" )
    <body>

        @include( "layout.helper.header" )
        
        <main>
            
            {{--
            <div class="page-wrapper chiller-theme toggled">
                
                <a id="show-sidebar" class="btn btn-sm btn-dark" href="#"><i class="fas fa-bars"></i></a>
                
                @include( "layout.helper.sidebar" )

                <main class="page-content">
                    <div class="container-fluid">
                        <h2>Pro Sidebar</h2>
                        <hr>
                        <div class="row">
                            <div class="form-group col-md-12">
                                <p>This is a responsive sidebar template with dropdown menu based on bootstrap 4 framework.</p>
                                <p> You can find the complete code on <a href="https://github.com/azouaoui-med/pro-sidebar-template" target="_blank">
                                    Github</a>, it contains more themes and background image option
                                </p>
                            </div>
                            <div class="form-group col-md-12">
                                <iframe src="https://ghbtns.com/github-btn.html?user=azouaoui-med&repo=pro-sidebar-template&type=star&count=true&size=small" frameborder="0" scrolling="0" width="90px" height="30px"></iframe>
                                <iframe src="https://ghbtns.com/github-btn.html?user=azouaoui-med&repo=pro-sidebar-template&type=fork&count=true&size=small" frameborder="0" scrolling="0" width="90px" height="30px"></iframe>
                            </div>
                            <div class="form-group col-md-12">
                                <div class="alert alert-success" role="alert">
                                    <h4 class="alert-heading">New !</h4>
                                    <p>New react pro sidebar library is now available on <a href="https://www.npmjs.com/package/react-pro-sidebar" target="_blank">npm</a> <a href="https://github.com/azouaoui-med/react-pro-sidebar" target="_blank">
                                        <img alt="GitHub stars" src="https://img.shields.io/github/stars/azouaoui-med/react-pro-sidebar?style=social" />
                                        </a>
                                    </p>
                                    <a href="https://github.com/azouaoui-med/react-pro-sidebar" target="_blank" class="btn btn-sm btn-primary mr-2">
                                    Github</a>
                                    <a href="https://azouaoui-med.github.io/react-pro-sidebar" target="_blank" class="btn btn-sm btn-success">
                                    Demo</a>
                                </div>
                            </div>
                        </div>
                        <h5>More templates</h5>
                        <hr>
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
                                <div class="card rounded-0 p-0 shadow-sm">
                                    <img src="https://user-images.githubusercontent.com/25878302/58369568-a49b2480-7efc-11e9-9ca9-2be44afacda1.png" class="card-img-top rounded-0" alt="Angular pro sidebar">
                                    <div class="card-body text-center">
                                        <h6 class="card-title">Angular Pro Sidebar</h6>
                                        <a href="https://github.com/azouaoui-med/angular-pro-sidebar" target="_blank" class="btn btn-primary btn-sm">Github</a>
                                        <a href="https://azouaoui-med.github.io/angular-pro-sidebar/demo/" target="_blank" class="btn btn-success btn-sm">Preview</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
                                <div class="card rounded-0 p-0 shadow-sm">
                                    <img src="https://user-images.githubusercontent.com/25878302/58369258-33f20900-7ef8-11e9-8ff3-b277cb7ed7b4.PNG" class="card-img-top rounded-0" alt="Angular pro sidebar">
                                    <div class="card-body text-center">
                                        <h6 class="card-title">Angular Dashboard</h6>
                                        <a href="https://github.com/azouaoui-med/lightning-admin-angular" target="_blank" class="btn btn-primary btn-sm">Github</a>
                                        <a href="https://azouaoui-med.github.io/lightning-admin-angular/demo/" target="_blank" class="btn btn-success btn-sm">Preview</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <!-- page-content" -->
            </div>--}}    
        
            <aside>
                <div class="sidebar left">
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="http://via.placeholder.com/160x160" class="rounded-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p>{{ session( env( "APP_CLAVE" ) . 'n4m3' ) . ' ' . session( env( "APP_CLAVE" ) . 'l437-n4m3' ) }}</p>
                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <ul class="list-sidebar bg-defoult">
                        <li>
                            <a href="#" data-toggle="collapse" data-target="#dashboard" class="collapsed active" > <i class="fa fa-th-large"></i> <span class="nav-label"> Dashboards </span> <span class="fa fa-chevron-left pull-right"></span> </a>
                            <ul class="sub-menu collapse" id="dashboard">
                                <li class="active"><a href="#">CSS3 Animation</a></li>
                                <li><a href="#">General</a></li>
                                <li><a href="#">Buttons</a></li>
                                <li><a href="#">Tabs & Accordions</a></li>
                                <li><a href="#">Typography</a></li>
                                <li><a href="#">FontAwesome</a></li>
                                <li><a href="#">Slider</a></li>
                                <li><a href="#">Panels</a></li>
                                <li><a href="#">Widgets</a></li>
                                <li><a href="#">Bootstrap Model</a></li>
                            </ul>
                        </li>
                        <li> <a href="#"><i class="fa fa-diamond"></i> <span class="nav-label">Layouts</span></a> </li>
                        <li>
                            <a href="#" data-toggle="collapse" data-target="#products" class="collapsed active" > <i class="fa fa-bar-chart-o"></i> <span class="nav-label">Graphs</span> <span class="fa fa-chevron-left pull-right"></span> </a>
                            <ul class="sub-menu collapse" id="products">
                                <li class="active"><a href="#">CSS3 Animation</a></li>
                                <li><a href="#">General</a></li>
                                <li><a href="#">Buttons</a></li>
                                <li><a href="#">Tabs & Accordions</a></li>
                                <li><a href="#">Typography</a></li>
                                <li><a href="#">FontAwesome</a></li>
                                <li><a href="#">Slider</a></li>
                                <li><a href="#">Panels</a></li>
                                <li><a href="#">Widgets</a></li>
                                <li><a href="#">Bootstrap Model</a></li>
                            </ul>
                        </li>
                        <li> <a href="#"><i class="fa fa-laptop"></i> <span class="nav-label">Grid options</span></a> </li>
                        <li>
                            <a href="#" data-toggle="collapse" data-target="#tables" class="collapsed active" ><i class="fa fa-table"></i> <span class="nav-label">Tables</span><span class="fa fa-chevron-left pull-right"></span></a>
                            <ul  class="sub-menu collapse" id="tables" >
                                <li><a href=""> Static Tables</a></li>
                                <li><a href=""> Data Tables</a></li>
                                <li><a href=""> Foo Tables</a></li>
                                <li><a href=""> jqGrid</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#" data-toggle="collapse" data-target="#e-commerce" class="collapsed active" ><i class="fa fa-shopping-cart"></i> <span class="nav-label">E-commerce</span><span class="fa fa-chevron-left pull-right"></span></a>
                            <ul  class="sub-menu collapse" id="e-commerce" >
                                <li><a href=""> Products grid</a></li>
                                <li><a href=""> Products list</a></li>
                                <li><a href="">Product edit</a></li>
                                <li><a href=""> Product detail</a></li>
                                <li><a href="">Cart</a></li>
                                <li><a href=""> Orders</a></li>
                                <li><a href=""> Credit Card form</a> </li>
                            </ul>
                        </li>
                        <li> <a href=""><i class="fa fa-pie-chart"></i> <span class="nav-label">Metrics</span> </a></li>
                        <li> <a href="#"><i class="fa fa-files-o"></i> <span class="nav-label">Other Pages</span></a> </li>
                        <li> <a href="#"><i class="fa fa-files-o"></i> <span class="nav-label">Other Pages</span></a> </li>
                        <li> <a href="#"><i class="fa fa-files-o"></i> <span class="nav-label">Other Pages</span></a> </li>
                        <li> <a href="#"><i class="fa fa-files-o"></i> <span class="nav-label">Other Pages</span></a> </li>
                        <li> <a href="#"><i class="fa fa-files-o"></i> <span class="nav-label">Other Pages</span></a> </li>
                    </ul>
                </div>
            </aside>
        </main>

        @include( "layout.helper.footer" )

        @include( "layout.helper.script" )
    </body>
</html>