<#include "/siteHeader.ftl">
<body>

<#include "/navbar.ftl">
        <!-- Header -->
        <div id="header">

        </div>
<div class="parallax-container">
    <div class="parallax">
        <img src="http://lorempixel.com/g/1920/1080/city/">
    </div>
    <div class="parallax">
        <h1 id="parallax-text">${message} ${user} </h1>
    </div>

</div>



<div class="row" id="mainContent">
<#list listaArticulos?reverse as articulo>
    <div class="col s12 m6" id="blog-post">

        <div class="card">
            <div class="card-image waves-effect waves-block waves-light">
                <img class="activator" src="http://lorempixel.com/1000/600/city/">
            </div>
            <div class="card-content">
                <span class="card-title activator grey-text text-darken-4">${articulo.getTitle()}<i class="material-icons right">comment</i></span>
                <p>${articulo.getBody()}</p>
            </div>
            <div class="card-reveal">
                <span class="card-title grey-text text-darken-4">Comments<i class="material-icons right">close</i></span>
                <!--Commentsss-->

                <div class="row" id="comment-container">
                    <#list comments?reverse as comment>
                        <#if comment.getArticle() == articulo.getId()>
                    <div class="col s12 m6">
                        <div class="card-panel teal">
                          <span class="white-text">
                              <h5>${comment.getAuthor()}:<i class="material-icons right">delete</i></h5>
                              <div class="divider"></div><br>
                             ${comment.getComment()}
                          </span>
                        </div>
                    </div>
                        </#if>
                    </#list>
                </div>
                <!--End Comments-->
                <div class="row">
                    <form class="col s12" action="" method="POST" id="commentForm">
                        <div class="row">
                            <div class="input-field col s12">
                                <input type="hidden" name="postID" value="${articulo.getId()}">
                                <textarea type="input" id="textarea1" value="Sample comment" name="thebodyx" class="materialize-textarea"></textarea>
                                <label for="textarea1">Textarea</label>
                            </div>
                        </div>
                        <button class="btn waves-effect waves-light" type="submit" name="action">Submit
                            <i class="material-icons right">send</i>
                        </button>
                    </form>
                </div>
            </div>
            <div class="chip">
                Tag
            </div>
            <div class="chip">
                Tag
            </div>
        </div>

    </div>
</#list>
</div>

<br><br>



<!-- Footer -->
<#include "/footer.ftl">


    </body>
</html>