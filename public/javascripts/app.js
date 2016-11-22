(function() {
    //
    moment.locale('fr');
    var $concertDate = $('.concerts-detail-date');
    $concertDate.each(function () {
       var $this = $(this);
       var date = $this.text();
       var formatedDate = moment(date).format('dddd DD MMMM YYYY');
       $this.text(formatedDate);
    });

    //
    var $flash = $('.app-flashes .app-flash');
    var $flashClose = $('.app-flashes .app-flash button');

    $flash.slideUp(0);

    $flash.slideDown(250);

    $flashClose.on('click', function () {
       var $this = $(this);
       $this.parent().slideUp(250);
    });
})();