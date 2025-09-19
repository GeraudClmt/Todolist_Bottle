%rebase('base.tpl')

<div class="d-flex justify-content-center align-items-center min-vh-100">
    <div class="text-center w-100" style="max-width: 500px;">
        <h1 class="section-title mb-4">Add a new task to the ToDo list:</h1>

        <form action="/new" method="post">
            <div class="mb-3">
                <input type="text" name="task" class="form-control" maxlength="100" placeholder="Enter your task here">
            </div>
            <div class="d-grid">
                <button type="submit" name="save" class="btn btn-success">Save</button>
            </div>
        </form>
    </div>
</div>
