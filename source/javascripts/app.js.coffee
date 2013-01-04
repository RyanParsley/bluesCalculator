#= require "music"

$(document).ready ->
  $("#notePicker a").click ->
    $(".scale").data "notes", (music.bluesScaleMinor this.text)
    $("#notePicker a").removeClass("active")
    $(this).addClass("active")
    $(".note:eq(0)").text $(".scale").data("notes").I
    $(".note:eq(1)").text $(".scale").data("notes").IIIb
    $(".note:eq(2)").text $(".scale").data("notes").IV
    $(".note:eq(3)").text $(".scale").data("notes").Vb
    $(".note:eq(4)").text $(".scale").data("notes").V
    $(".note:eq(5)").text $(".scale").data("notes").VIIb

    return false
  music = new Music
  $("#notePicker li:last a").addClass("active")
