<input type="hidden" name="location" value="{{.Category.NameEn}}" />
<h1>{{.Tag.Name}}相关文章</h1>
<table class="article-list table table-striped table-hover">
<thead>
    <tr><th>文章标题</th><th>发表日期</th></tr>
</thead>
<tbody>
    {{range .Articles}}
    <tr><td><a href="/{{id2categoryEn .Category}}/{{.Id}}" target="_blank">{{.Title}}</a></td><td>{{dateformat .Pubdate "2006-01-02"}}</td></tr>
    {{end}}
</tbody>
</table>
<ul class="pagination">
    {{str2html .Paginator}}
</ul><!-- End .pagination -->
