%#template for editing a task
%#the template expects to receive a value for "number" as well a "old", the text of the selected ToDo item
%rebase('base.tpl')

<div class="d-flex justify-content-center align-items-center min-vh-100">
    <div class="text-center w-100" style="max-width: 600px;">
        <h1 class="section-title mb-4">Edit the task with ID = {{number}}</h1>


        <form action="/edit/{{number}}" method="post">
            <div class="mb-3">
                <input type="text" name="task" value="{{current_data[0]}}" maxlength="100" class="form-control" placeholder="Edit your task">
            </div>
            <div class="mb-3">
                <select name="status" class="form-select">
                    <option value="open">Open</option>
                    <option value="closed" >Closed</option>
                </select>
            </div>
            <div class="d-grid">
                <button type="submit" name="save" class="btn btn-primary">Save</button>
            </div>
        </form>
    </div>
</div>
