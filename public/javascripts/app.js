(function() {
    // Format date
    moment.locale('fr');
    var $concertDate = $('.concerts-detail-date');
    $concertDate.each(function () {
       var $this = $(this);
       var date = $this.text();
       var formatedDate = moment(date).format('dddd DD MMMM YYYY');
       $this.text(formatedDate);
    });

    // Display flashes + add close event
    var $flash = $('.app-flashes .app-flash');
    var $flashClose = $('.app-flashes .app-flash button');

    $flash.slideUp(0);

    $flash.slideDown(250);

    $flashClose.on('click', function () {
       var $this = $(this);
       $this.parent().slideUp(250);
    });

    //
    var $searchInput = $('#search');
    var $searchForm = $searchInput.parent();
    var $searchResults = $('.header-search-result');
    var $searchClose = $('.header-search-result [data-close]');
    var url = "/search";

    $searchInput.on('click', function () {
        $searchResults.addClass('active');
    });

    $searchClose.on('click', function () {
        $searchResults.removeClass('active');
    });

    $searchInput.bind('keyup', function() {
        var $this = $(this);

        var search = $this.val();

        if (search != '') {
            var data = $searchForm.serialize();

            $.get(url, data, function(results) {
                $searchResults.children().not('[data-close]').remove();
                results.forEach(function (result) {
                    console.log(result)
                    $searchResults.append('<a href="/concerts/'+result.id+'">'+result.title+'</a>')
                });
            });
        }
    });
})();