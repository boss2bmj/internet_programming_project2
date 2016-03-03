# internet_programming_project2

##start project
rails new internet_programming_project2
##devise gem
rails generate devise:install

rails generate devise Admin

rake db:migrate

rails g devise:views


##MVC

rails g scaffold CarDetail car_license:string description:text enter_date:date car_category:string car_subcategory:string car_status:string

rails g controller page



##Search function


[Datatable](https://www.datatables.net)

```html
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>

<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css">

<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.11/js/jquery.dataTables.js"></script>

<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.11/js/dataTables.bootstrap.min.js"></script>

<script>
  $(document).ready(function(){
    $('#datatable').DataTable( );
  });
</script>
```





##Add Image

gem "paperclip", "~> 4.3"

```bash
$ rails g scaffold CarPhoto image_name:string
```


```rb
class CarPhoto < ActiveRecord::Base
  belongs_to :car_detail
  has_attached_file :image, styles: { superlarge: "1200x560>",large: "700x700>", medium: "300x300>", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

```

>app/models/car_photo.rb


```bash
$ rails g paperclip CarPhoto image
```

to make photo pop up when choose

```html
<img id="output"/>

<%= f.file_field :image, onchange: "loadFile(event)" , accept:"image/*"  %>

<script>
  var loadFile = function(event) {
    var output = document.getElementById('output');
    output.src = URL.createObjectURL(event.target.files[0]);
  };
</script>


```

