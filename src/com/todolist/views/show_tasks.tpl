%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)


%rebase('base.tpl')

<div class="d-flex justify-content-center align-items-center min-vh-100">
    <div class="text-center">
        %if status == "all":
            <h1 class="section-title mb-4">All items:</h1>
        %else:
            <h1 class="section-title mb-4">The open items are as follows:</h1>
        %end

        <div class="table-responsive d-flex justify-content-center">
            <table class="table table-striped table-bordered w-auto">
            %for row in rows:
              <tr>
              %for col in row:
                <td>{{col}}</td>
              %end
               <td> <a href="/edit/{{row[0]}}" class="btn btn-warning">Edit</a></td>
                  <td> <a href="/delete/{{row[0]}}" class="btn btn-danger">Remove</a></td>
              </tr>
            %end
            </table>
        </div>

        <div class="row">
            <div class="col">
                <p class="mt-4">
            <a href="/new" class="btn btn-primary">Add a new task</a>
            </p>
            </div>
            <div class="col">
                <p class="mt-4">
            <a href="/todo?show=all" class="btn btn-primary">Show all task</a>
            </p>
            </div>

        </div>
    </div>
</div>
