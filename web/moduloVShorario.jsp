<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="h-full bg-gray-100">
    <head>
        <meta charset='utf-8'>
        <title>Horario</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <script src="https://cdn.tailwindcss.com"></script>
        <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
        <link rel='stylesheet' href='app.css'>
        <link rel='stylesheet' href='components-v2.css'>
    </head>
    <body class="h-full overflow-hidden">
<div class="h-full flex flex-col">
  <!-- Top nav-->
  <header class="flex-shrink-0 relative h-16 bg-white flex items-center">
    <!-- Logo area -->
    <div class="absolute inset-y-0 left-0 md:static md:flex-shrink-0">
      <a href="#" class="flex items-center justify-center h-16 w-16 bg-gray-700 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-600 md:w-20">
          <img class="h-12 w-auto" src="img/ViSunn.svg" alt="Workflow">
      </a>
    </div>

    <!-- Picker area -->
    <div class="mx-auto md:hidden">
      <div class="relative">
        <label for="inbox-select" class="sr-only">Choose inbox</label>
        <select id="inbox-select" class="rounded-md border-0 bg-none pl-3 pr-8 text-base font-medium text-gray-900 focus:ring-2 focus:ring-indigo-600">
          <option selected>Horario</option>

          <option>Inicio</option>

          <option>Progreso</option>

          <option>Sugerencias</option>

          <option>Suscripcion</option>
          
          
        </select>
        <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center justify-center pr-2">
          <!-- Heroicon name: solid/chevron-down -->
          <svg class="h-5 w-5 text-gray-500" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
            <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
          </svg>
        </div>
      </div>
    </div>

    <!-- Menu button area -->
    <div class="absolute inset-y-0 right-0 pr-4 flex items-center sm:pr-6 md:hidden">
      <!-- Mobile menu button -->
      <button type="button" @click="isOpen = !isOpen" class="-mr-2 inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-600">
        <span class="sr-only">Open main menu</span>
        <!-- Heroicon name: outline/menu -->
        <svg class="block h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
        </svg>
      </button>
    </div>

    <!-- Desktop nav area -->
    <div class="hidden md:min-w-0 md:flex-1 md:flex md:items-center md:justify-between">
      <div class="min-w-0 flex-1">
        <div class="max-w-2xl relative text-gray-400 focus-within:text-gray-500">

        </div>
      </div>
      <div class="ml-10 pr-4 flex-shrink-0 flex items-center space-x-10">
        <nav aria-label="Global" class="flex space-x-10">
            <a href="settingsVS.jsp" class="text-sm font-medium text-gray-900">Configuraci&oacute;n</a>
        </nav>
        <div class="flex items-center space-x-8">
          <span class="inline-flex">
            <a href="#" class="-mx-1 bg-white p-1 rounded-full text-gray-400 hover:text-gray-500 duration-300">
              <span class="sr-only">View notifications</span>
              <!-- Heroicon name: outline/bell -->
              <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
              </svg>
            </a>
          </span>

          <div x-data="{ isOpen: false }" class="relative inline-block text-left">
            <button type="button" @click="isOpen = !isOpen" class="bg-white rounded-full flex text-sm focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-600" id="menu-0-button" aria-expanded="false" aria-haspopup="true">
              <span class="sr-only">Open user menu</span>
              <img class="h-8 w-8 rounded-full" src="https://images.unsplash.com/photo-1517365830460-955ce3ccd263?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="">
            </button>

            <div 
                x-show="isOpen"
                    x-transition:enter="transition ease-out duration-100"
                    x-transition:enter-start="transform opacity-0 scale-95"
                    x-transition:enter-end="transform opacity-100 scale-100"
                    x-transition:leave="transition ease-in duration-75"
                    x-transition:leave-start="transform opacity-100 scale-100"
                    x-transition:leave-end="transform opacity-0 scale-95"                       
                    class="origin-top-right absolute z-50 right-0 mt-2 w-56 rounded-md shadow-lg bg-white ring-1 ring-black ring-opacity-5 focus:outline-none" role="menu" aria-orientation="vertical" aria-labelledby="menu-0-button" tabindex="-1">
              <div class="py-1" role="none">
                <!-- Active: "bg-gray-100", Not Active: "" -->
                <a href="#" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="menu-0-item-0"> Mi perfil </a>
                <a href="#" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="menu-0-item-1"> Cerrar sesi&oacute;n </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Mobile menu, show/hide this `div` based on menu open/closed state -->

    <div  x-data="{ isOpen: false }" class="fixed inset-0 z-40 md:hidden" role="dialog" aria-modal="true">
      <!--
        Off-canvas menu overlay, show/hide based on off-canvas menu state.

        Entering: "transition-opacity ease-linear duration-300"
          From: "opacity-0"
          To: "opacity-100"
        Leaving: "transition-opacity ease-linear duration-300"
          From: "opacity-100"
          To: "opacity-0"
      -->
      <div 
        x-show="isOpen"
        x-transition:enter="transition-opacity ease-linear duration-300"
        x-transition:enter-start="opacity-0"
        x-transition:enter-end="opacity-100"
        x-transition:leave="transition-opacity ease-linear duration-300"
        x-transition:leave-start="opacity-100"
        x-transition:leave-end="opacity-0"
          class="hidden sm:block sm:fixed sm:inset-0 sm:bg-gray-600 sm:bg-opacity-75" aria-hidden="true"></div>

      <!--
        Mobile menu, toggle classes based on menu state.

        Entering: "transition ease-out duration-150 sm:ease-in-out sm:duration-300"
          From: "transform opacity-0 scale-110 sm:translate-x-full sm:scale-100 sm:opacity-100"
          To: "transform opacity-100 scale-100  sm:translate-x-0 sm:scale-100 sm:opacity-100"
        Leaving: "transition ease-in duration-150 sm:ease-in-out sm:duration-300"
          From: "transform opacity-100 scale-100 sm:translate-x-0 sm:scale-100 sm:opacity-100"
          To: "transform opacity-0 scale-110  sm:translate-x-full sm:scale-100 sm:opacity-100"
      -->
      <nav 
        x-show="isOpen"
        x-transition:enter="transition ease-out duration-150 sm:ease-in-out sm:duration-300"
        x-transition:enter-start="transform opacity-0 scale-110 sm:translate-x-full sm:scale-100 sm:opacity-100"
        x-transition:enter-end="transform opacity-100 scale-100  sm:translate-x-0 sm:scale-100 sm:opacity-100"
        x-transition:leave="transition ease-in duration-150 sm:ease-in-out sm:duration-300"
        x-transition:leave-start="transform opacity-100 scale-100 sm:translate-x-0 sm:scale-100 sm:opacity-100"
        x-transition:leave-end="transform opacity-0 scale-110  sm:translate-x-full sm:scale-100 sm:opacity-100"
          class="fixed z-40 inset-0 h-full w-full bg-white sm:inset-y-0 sm:left-auto sm:right-0 sm:max-w-sm sm:w-full sm:shadow-lg" aria-label="Global">
        <div class="h-16 flex items-center justify-between px-4 sm:px-6">
          <a href="#">
              <img class="block h-8 w-auto" src="img/ViSunn.svg" alt="ViSunn">
          </a>
          <button type="button" @click="isOpen = !isOpen" type="button" class="-mr-2 inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-600">
            <span class="sr-only">Close main menu</span>
            <!-- Heroicon name: outline/x -->
            <svg class="block h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
            </svg>
          </button>
        </div>
        <div class="mt-2 max-w-8xl mx-auto px-4 sm:px-6">
          <div class="relative text-gray-400 focus-within:text-gray-500">
            <div class="absolute inset-y-0 left-0 flex items-center justify-center pl-3">
            </div>
          </div>
        </div>
        <div class="max-w-8xl mx-auto py-3 px-2 sm:px-4">
          <a href="#" class="block rounded-md py-2 px-3 text-base font-medium text-gray-900 hover:bg-gray-100">Inboxes</a>

          <a href="#" class="block rounded-md py-2 px-3 text-base font-medium text-gray-900 hover:bg-gray-100">Reporting</a>

          <a href="#" class="block rounded-md py-2 px-3 text-base font-medium text-gray-900 hover:bg-gray-100">Settings</a>
        </div>
        <div class="border-t border-gray-200 pt-4 pb-3">
          <div class="max-w-8xl mx-auto px-4 flex items-center sm:px-6">
            <div class="flex-shrink-0">
              <img class="h-10 w-10 rounded-full" src="https://images.unsplash.com/photo-1517365830460-955ce3ccd263?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="">
            </div>
            <div class="ml-3 min-w-0 flex-1">
              <div class="text-base font-medium text-gray-800 truncate">Whitney Francis</div>
              <div class="text-sm font-medium text-gray-500 truncate">whitney.francis@example.com</div>
            </div>
            <a href="#" class="ml-auto flex-shrink-0 bg-white p-2 text-gray-400 hover:text-gray-500">
              <span class="sr-only">View notifications</span>
              <!-- Heroicon name: outline/bell -->
              <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
              </svg>
            </a>
          </div>
          <div class="mt-3 max-w-8xl mx-auto px-2 space-y-1 sm:px-4">
            <a href="#" class="block rounded-md py-2 px-3 text-base font-medium text-gray-900 hover:bg-gray-50">Mi perfil</a>

            <a href="#" class="block rounded-md py-2 px-3 text-base font-medium text-gray-900 hover:bg-gray-50">Cerrar sesi&oacute;n</a>
          </div>
        </div>
      </nav>
    </div>
  </header>

  <!-- Bottom section -->
  <div class="min-h-0 flex-1 flex overflow-hidden">
    <!-- Narrow sidebar-->
    <nav aria-label="Sidebar" class="hidden md:block md:flex-shrink-0 md:bg-gray-800 md:overflow-y-auto">
      <div class="relative w-20 flex flex-col p-3 space-y-3">
          <a href="moduloVSinicio.jsp" class="text-gray-400 hover:bg-gray-700 duration-300 flex-shrink-0 inline-flex items-center justify-center h-14 w-14 rounded-lg">
          <span class="sr-only">Inicio</span>
          <!-- Heroicon name: outline/inbox -->
        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M14.752 11.168l-3.197-2.132A1 1 0 0010 9.87v4.263a1 1 0 001.555.832l3.197-2.132a1 1 0 000-1.664z" />
            <path stroke-linecap="round" stroke-linejoin="round" d="M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
        </svg>
        </a>

          <a href="moduloVSprogreso.jsp" class="text-gray-400 hover:bg-gray-700 duration-300 flex-shrink-0 inline-flex items-center justify-center h-14 w-14 rounded-lg">
          <span class="sr-only">Progreso</span>
          <!-- Heroicon name: outline/archive -->
        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z" />
        </svg>
        </a>

          <a href="moduloVShorario.jsp" class="bg-gray-900 text-white flex-shrink-0 inline-flex items-center justify-center h-14 w-14 rounded-lg">
          <span class="sr-only">Horario</span>
          <!-- Heroicon name: outline/user-circle -->
          <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
        </svg>
        </a>

          <a href="moduloVSsugerencia.jsp" class="text-gray-400 hover:bg-gray-700 duration-300 flex-shrink-0 inline-flex items-center justify-center h-14 w-14 rounded-lg">
          <span class="sr-only">Sugerencias</span>
          <!-- Heroicon name: outline/flag -->
          <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M9.663 17h4.673M12 3v1m6.364 1.636l-.707.707M21 12h-1M4 12H3m3.343-5.657l-.707-.707m2.828 9.9a5 5 0 117.072 0l-.548.547A3.374 3.374 0 0014 18.469V19a2 2 0 11-4 0v-.531c0-.895-.356-1.754-.988-2.386l-.548-.547z" />
          </svg>
        </a>

          <a href="moduloVSdieta.jsp" class="text-gray-400 hover:bg-gray-700 duration-300 flex-shrink-0 inline-flex items-center justify-center h-14 w-14 rounded-lg">
          <span class="sr-only">Dieta</span>
          <!-- Heroicon name: outline/ban -->
          <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M3 6l3 1m0 0l-3 9a5.002 5.002 0 006.001 0M6 7l3 9M6 7l6-2m6 2l3-1m-3 1l-3 9a5.002 5.002 0 006.001 0M18 7l3 9m-3-9l-6-2m0-2v2m0 16V5m0 16H9m3 0h3" />
            </svg>
        </a>

          <form action="buscarSub.jsp">
          <button>
          <a href="moduloVSuscripcionM.jsp" class="text-gray-400 hover:bg-gray-700 duration-300 flex-shrink-0 inline-flex items-center justify-center h-14 w-14 rounded-lg">
          <span class="sr-only">Suscripcion</span>
          <!-- Heroicon name: outline/pencil-alt -->
        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M9 12l2 2 4-4M7.835 4.697a3.42 3.42 0 001.946-.806 3.42 3.42 0 014.438 0 3.42 3.42 0 001.946.806 3.42 3.42 0 013.138 3.138 3.42 3.42 0 00.806 1.946 3.42 3.42 0 010 4.438 3.42 3.42 0 00-.806 1.946 3.42 3.42 0 01-3.138 3.138 3.42 3.42 0 00-1.946.806 3.42 3.42 0 01-4.438 0 3.42 3.42 0 00-1.946-.806 3.42 3.42 0 01-3.138-3.138 3.42 3.42 0 00-.806-1.946 3.42 3.42 0 010-4.438 3.42 3.42 0 00.806-1.946 3.42 3.42 0 013.138-3.138z" />
        </svg>
        </a>
        </button>
        </form>
      </div>
    </nav>

    <!-- Main area -->
    <main class="min-w-0 flex-1 border-t border-gray-200 lg:flex">
      <!-- Primary column -->
      <section aria-labelledby="primary-heading" class="min-w-0 flex-1 h-full flex flex-col overflow-y-auto lg:order-last">
        <h1 id="primary-heading" class="sr-only">Home</h1>
        <!-- Your content -->
            <!-- This example requires Tailwind CSS v2.0+ -->
<div class="flex h-full flex-col">
  <header class="relative z-30 flex flex-none items-center justify-between border-b border-gray-200 py-4 px-6">
    <h1 class="text-lg font-semibold text-gray-900">
        <%
            LocalDate date = LocalDate.now();
            DateTimeFormatter formatterMonth = DateTimeFormatter.ofPattern("MM");
            DateTimeFormatter formatterYear = DateTimeFormatter.ofPattern("YYYY");
            String mes;
            Integer year;
            
            mes = "";
            
            year = Integer.valueOf(date.format(formatterYear));
            
            switch(Integer.valueOf(date.format(formatterMonth)))
            {
                case 1:
                    mes = "Enero";
                    break;
                case 2:
                    mes = "Febrero";
                    break;
                case 3:
                    mes = "Marzo";
                    break;
                case 4:
                    mes = "Abril";
                    break;
                case 5:
                    mes = "Mayo";
                    break;
                case 6:
                    mes = "Junio";
                    break;
                case 7:
                    mes = "Julio";
                    break;
                case 8:
                    mes = "Agosto";
                    break;
                case 9:
                    mes = "Septiembre";
                    break;   
                case 10:
                    mes = "Octubre";
                    break;
                case 11:
                    mes = "Noviembre";
                    break;
                case 12:
                    mes = "Diciembre";
                    break;                    
            } 
        %>
        <%=mes%> <%=year%> 
    </h1>
    <div class="flex items-center">
      <div class="flex items-center rounded-md shadow-sm md:items-stretch">
        <button type="button" class="flex items-center justify-center rounded-l-md border border-r-0 border-gray-300 bg-white py-2 pl-3 pr-4 text-gray-400 hover:text-gray-500 focus:relative md:w-9 md:px-2 md:hover:bg-gray-50">
          <span class="sr-only">Previous month</span>
          <!-- Heroicon name: solid/chevron-left -->
          <svg class="h-5 w-5" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
            <path fill-rule="evenodd" d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z" clip-rule="evenodd" />
          </svg>
        </button>
        <button type="button" class="hidden border-t border-b border-gray-300 bg-white px-3.5 text-sm font-medium text-gray-700 hover:bg-gray-50 hover:text-gray-900 focus:relative md:block">Rutina 1</button>
        <span class="relative -mx-px h-5 w-px bg-gray-300 md:hidden"></span>
        <button type="button" class="flex items-center justify-center rounded-r-md border border-l-0 border-gray-300 bg-white py-2 pl-4 pr-3 text-gray-400 hover:text-gray-500 focus:relative md:w-9 md:px-2 md:hover:bg-gray-50">
          <span class="sr-only">Next month</span>
          <!-- Heroicon name: solid/chevron-right -->
          <svg class="h-5 w-5" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
            <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd" />
          </svg>
        </button>
      </div>
      <div class="hidden md:ml-4 md:flex md:items-center">

        <div class="ml-6 h-6 w-px bg-gray-300"></div>
        <button type="button" class="ml-6 rounded-md border border-transparent bg-green-600 py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-green-800 duration-300 focus:outline-none focus:ring-2 focus:ring-teal-500 focus:ring-offset-2">A&ntilde;ade una actividad</button>
      </div>
      <div x-data="{ isOpen: false }" class="relative ml-6 md:hidden">

        <!--
          Dropdown menu, show/hide based on menu state.

          Entering: "transition ease-out duration-100"
            From: "transform opacity-0 scale-95"
            To: "transform opacity-100 scale-100"
          Leaving: "transition ease-in duration-75"
            From: "transform opacity-100 scale-100"
            To: "transform opacity-0 scale-95"
        -->
        
      </div>
    </div>
  </header>
  <div class="flex flex-auto flex-col overflow-auto bg-white">
    <div style="width: 165%" class="flex max-w-full flex-none flex-col sm:max-w-none md:max-w-full">
      <div class="sticky top-0 z-30 flex-none bg-white shadow ring-1 ring-black ring-opacity-5 sm:pr-8">
        <div class="grid grid-cols-7 text-sm leading-6 text-gray-500 sm:hidden">
          <button type="button" class="flex flex-col items-center pt-2 pb-3">L <span class="mt-1 flex h-8 w-8 items-center justify-center font-semibold text-gray-900">10</span></button>
          <button type="button" class="flex flex-col items-center pt-2 pb-3">M <span class="mt-1 flex h-8 w-8 items-center justify-center font-semibold text-gray-900">11</span></button>
          <button type="button" class="flex flex-col items-center pt-2 pb-3">M <span class="mt-1 flex h-8 w-8 items-center justify-center rounded-full bg-indigo-600 font-semibold text-white">12</span></button>
          <button type="button" class="flex flex-col items-center pt-2 pb-3">J <span class="mt-1 flex h-8 w-8 items-center justify-center font-semibold text-gray-900">13</span></button>
          <button type="button" class="flex flex-col items-center pt-2 pb-3">V <span class="mt-1 flex h-8 w-8 items-center justify-center font-semibold text-gray-900">14</span></button>
          <button type="button" class="flex flex-col items-center pt-2 pb-3">S <span class="mt-1 flex h-8 w-8 items-center justify-center font-semibold text-gray-900">15</span></button>
          <button type="button" class="flex flex-col items-center pt-2 pb-3">D <span class="mt-1 flex h-8 w-8 items-center justify-center font-semibold text-gray-900">16</span></button>
        </div>

        <div class="-mr-px hidden grid-cols-7 divide-x divide-gray-100 border-r border-gray-100 text-sm leading-6 text-gray-500 sm:grid">
          <div class="col-end-1 w-14"></div>
          <div class="flex items-center justify-center py-3">
            <span>Lun <span class="items-center justify-center font-semibold text-gray-900"></span></span>
          </div>
          <div class="flex items-center justify-center py-3">
            <span>Mar <span class="items-center justify-center font-semibold text-gray-900"></span></span>
          </div>
          <div class="flex items-center justify-center py-3">
            <span class="flex items-baseline"> <span class="ml-1.5 flex h-8 w-8 items-center justify-center rounded-full bg-indigo-600 font-semibold text-white">Mie</span></span>
          </div>
          <div class="flex items-center justify-center py-3">
            <span>Jue <span class="items-center justify-center font-semibold text-gray-900"></span></span>
          </div>
          <div class="flex items-center justify-center py-3">
            <span>Vie <span class="items-center justify-center font-semibold text-gray-900"></span></span>
          </div>
          <div class="flex items-center justify-center py-3">
            <span>Sab <span class="items-center justify-center font-semibold text-gray-900"></span></span>
          </div>
          <div class="flex items-center justify-center py-3">
            <span>Dom <span class="items-center justify-center font-semibold text-gray-900"></span></span>
          </div>
        </div>
      </div>
      <div class="flex flex-auto">
        <div class="sticky left-0 z-10 w-14 flex-none bg-white ring-1 ring-gray-100"></div>
        <div class="grid flex-auto grid-cols-1 grid-rows-1">
          <!-- Horizontal lines -->
          <div class="col-start-1 col-end-2 row-start-1 grid divide-y divide-gray-100" style="grid-template-rows: repeat(48, minmax(3.5rem, 1fr))">
            <div class="row-end-1 h-7"></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">12AM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">1AM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">2AM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">3AM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">4AM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">5AM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">6AM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">7AM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">8AM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">9AM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">10AM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">11AM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">12PM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">1PM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">2PM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">3PM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">4PM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">5PM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">6PM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">7PM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">8PM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">9PM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">10PM</div>
            </div>
            <div></div>
            <div>
              <div class="sticky left-0 z-20 -mt-2.5 -ml-14 w-14 pr-2 text-right text-xs leading-5 text-gray-400">11PM</div>
            </div>
            <div></div>
          </div>

          <!-- Vertical lines -->
          <div class="col-start-1 col-end-2 row-start-1 hidden grid-cols-7 grid-rows-1 divide-x divide-gray-100 sm:grid sm:grid-cols-7">
            <div class="col-start-1 row-span-full"></div>
            <div class="col-start-2 row-span-full"></div>
            <div class="col-start-3 row-span-full"></div>
            <div class="col-start-4 row-span-full"></div>
            <div class="col-start-5 row-span-full"></div>
            <div class="col-start-6 row-span-full"></div>
            <div class="col-start-7 row-span-full"></div>
            <div class="col-start-8 row-span-full w-8"></div>
          </div>

          <!-- Events -->
          <ol class="col-start-1 col-end-2 row-start-1 grid grid-cols-1 sm:grid-cols-7 sm:pr-8" style="grid-template-rows: 1.75rem repeat(288, minmax(0, 1fr)) auto">
            <li class="relative mt-px flex sm:col-start-3" style="grid-row: 74 / span 12">
              <a href="#" class="group absolute inset-1 flex flex-col overflow-y-auto rounded-lg bg-blue-50 p-2 text-xs leading-5 hover:bg-blue-100">
                <p class="order-1 font-semibold text-blue-700">Breakfast</p>
                <p class="text-blue-500 group-hover:text-blue-700"><time datetime="2022-01-12T06:00">6:00 AM</time></p>
              </a>
            </li>
            <li class="relative mt-px flex sm:col-start-3" style="grid-row: 92 / span 30">
              <a href="#" class="group absolute inset-1 flex flex-col overflow-y-auto rounded-lg bg-pink-50 p-2 text-xs leading-5 hover:bg-pink-100">
                <p class="order-1 font-semibold text-pink-700">Flight to Paris</p>
                <p class="text-pink-500 group-hover:text-pink-700"><time datetime="2022-01-12T07:30">7:30 AM</time></p>
              </a>
            </li>
            <li class="relative mt-px hidden sm:col-start-6 sm:flex" style="grid-row: 122 / span 24">
              <a href="#" class="group absolute inset-1 flex flex-col overflow-y-auto rounded-lg bg-gray-100 p-2 text-xs leading-5 hover:bg-gray-200">
                <p class="order-1 font-semibold text-gray-700">Meeting with design team at Disney</p>
                <p class="text-gray-500 group-hover:text-gray-700"><time datetime="2022-01-15T10:00">10:00 AM</time></p>
              </a>
            </li>
          </ol>
        </div>
      </div>
    </div>
  </div>
</div>


      </section>
      <aside class="hidden lg:block lg:flex-shrink-0 lg:order-first">
        <div class="h-full relative p-7 flex flex-col w-96 border-r border-gray-200 bg-gray-100 overflow-y-auto">
          <!-- Your content -->
                      <!-- This example requires Tailwind CSS v2.0+ -->
<div class="flow-root">
  <ul role="list" class="-mb-8">
    <li>
      <div class="relative pb-8">
        <span class="absolute top-4 left-4 -ml-px h-full w-0.5 bg-gray-200" aria-hidden="true"></span>
        <div class="relative flex space-x-3">
          <div>
            <span class="h-8 w-8 rounded-full bg-gray-400 flex items-center justify-center ring-8 ring-white">
              <!-- Heroicon name: solid/user -->
              <svg class="h-5 w-5 text-white" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                <path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd" />
              </svg>
            </span>
          </div>
          <div class="min-w-0 flex-1 pt-1.5 flex justify-between space-x-4">
            <div>
              <p class="text-sm text-gray-500">Agregó la actividad:  <a href="#" class="font-medium text-gray-900">Desayuno</a></p>
            </div>
            <div class="text-right text-sm whitespace-nowrap text-gray-500">
              <time datetime="2020-09-20">Mayo 21</time>
            </div>
          </div>
        </div>
      </div>
    </li>

    <li>
      <div class="relative pb-8">
        <span class="absolute top-4 left-4 -ml-px h-full w-0.5 bg-gray-200" aria-hidden="true"></span>
        <div class="relative flex space-x-3">
          <div>
            <span class="h-8 w-8 rounded-full bg-blue-500 flex items-center justify-center ring-8 ring-white">
              <!-- Heroicon name: solid/thumb-up -->
              <svg class="h-5 w-5 text-white" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                <path d="M2 10.5a1.5 1.5 0 113 0v6a1.5 1.5 0 01-3 0v-6zM6 10.333v5.43a2 2 0 001.106 1.79l.05.025A4 4 0 008.943 18h5.416a2 2 0 001.962-1.608l1.2-6A2 2 0 0015.56 8H12V4a2 2 0 00-2-2 1 1 0 00-1 1v.667a4 4 0 01-.8 2.4L6.8 7.933a4 4 0 00-.8 2.4z" />
              </svg>
            </span>
          </div>
          <div class="min-w-0 flex-1 pt-1.5 flex justify-between space-x-4">
            <div>
              <p class="text-sm text-gray-500">Empezó: <a href="#" class="font-medium text-gray-900">Ejercicio</a></p>
            </div>
            <div class="text-right text-sm whitespace-nowrap text-gray-500">
              <time datetime="2020-09-22">Mayo 24</time>
            </div>
          </div>
        </div>
      </div>
    </li>

    <li>
      <div class="relative pb-8">
        <span class="absolute top-4 left-4 -ml-px h-full w-0.5 bg-gray-200" aria-hidden="true"></span>
        <div class="relative flex space-x-3">
          <div>
            <span class="h-8 w-8 rounded-full bg-green-500 flex items-center justify-center ring-8 ring-white">
              <!-- Heroicon name: solid/check -->
              <svg class="h-5 w-5 text-white" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
              </svg>
            </span>
          </div>
          <div class="min-w-0 flex-1 pt-1.5 flex justify-between space-x-4">
            <div>
              <p class="text-sm text-gray-500">Completó con éxito: <a href="#" class="font-medium text-gray-900">Ejercicio</a></p>
            </div>
            <div class="text-right text-sm whitespace-nowrap text-gray-500">
              <time datetime="2020-09-28">Mayo 24</time>
            </div>
          </div>
        </div>
      </div>
    </li>

    <li>
      <div class="relative pb-8">
        <span class="absolute top-4 left-4 -ml-px h-full w-0.5 bg-gray-200" aria-hidden="true"></span>
        <div class="relative flex space-x-3">
          <div>
            <span class="h-8 w-8 rounded-full bg-blue-500 flex items-center justify-center ring-8 ring-white">
              <!-- Heroicon name: solid/thumb-up -->
              <svg class="h-5 w-5 text-white" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                <path d="M2 10.5a1.5 1.5 0 113 0v6a1.5 1.5 0 01-3 0v-6zM6 10.333v5.43a2 2 0 001.106 1.79l.05.025A4 4 0 008.943 18h5.416a2 2 0 001.962-1.608l1.2-6A2 2 0 0015.56 8H12V4a2 2 0 00-2-2 1 1 0 00-1 1v.667a4 4 0 01-.8 2.4L6.8 7.933a4 4 0 00-.8 2.4z" />
              </svg>
            </span>
          </div>
          <div class="min-w-0 flex-1 pt-1.5 flex justify-between space-x-4">
            <div>
              <p class="text-sm text-gray-500">Empezó: <a href="#" class="font-medium text-gray-900">Aseo Personal</a></p>
            </div>
            <div class="text-right text-sm whitespace-nowrap text-gray-500">
              <time datetime="2020-09-30">Mayo 31</time>
            </div>
          </div>
        </div>
      </div>
    </li>

    <li>
      <div class="relative pb-8">
        <div class="relative flex space-x-3">
          <div>
            <span class="h-8 w-8 rounded-full bg-green-500 flex items-center justify-center ring-8 ring-white">
              <!-- Heroicon name: solid/check -->
              <svg class="h-5 w-5 text-white" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
              </svg>
            </span>
          </div>
          <div class="min-w-0 flex-1 pt-1.5 flex justify-between space-x-4">
            <div>
              <p class="text-sm text-gray-500">Completó con éxito: <a href="#" class="font-medium text-gray-900">Aseo Personal</a></p>
            </div>
            <div class="text-right text-sm whitespace-nowrap text-gray-500">
              <time datetime="2020-10-04">Mayo 31</time>
            </div>
          </div>
        </div>
      </div>
    </li>
  </ul>
</div>

          </div>
        </div>
      </aside>
     
    </main>
  </div>
</div>

    </body>
</html>
