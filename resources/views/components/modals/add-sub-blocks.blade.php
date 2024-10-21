<div class="modal fade" id="modal-add-sub-blocks" style="display: none;" aria-hidden="true">
    <div class="modal-dialog">
        <form action=""
              method="post"
              class="modal-content"
                 id="addSubBlockForm">
            @csrf
            <div class="modal-header">
                <h4 class="modal-title">Add Sub Blocks</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Add Sub Blocks</p>
                <div class="form-group">
                    <label for="">Number</label>
                    <input type="number" value="1" name="number" required class="form-control">
                </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button class="btn btn-success">Add</button>
            </div>
        </form>
    </div>
</div>
